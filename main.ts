// (copy logic TypeScript từ file của bạn vào đây, rồi biên dịch sang JS)
// ENTITY: Player
export class Player {
  x: number;
  y: number;

  level = 1;
  xp = 0;
  nextXP = 100;

  radius = 20;
  baseSpeed = 4;
  speed = 4;

  isAttacking = false;
  isBoosting = false;

  constructor(x: number, y: number) {
    this.x = x;
    this.y = y;
  }

  addXP(amount: number) {
    this.xp += amount;

    while (this.xp >= this.nextXP) {
      this.xp -= this.nextXP;
      this.level++;
      this.nextXP = Math.floor(this.nextXP * 1.4);

      this.radius += 4;
      this.baseSpeed *= 0.95;
      this.speed *= 0.95;
    }
  }

  getCurrentSpeed() {
    return this.baseSpeed * (this.isBoosting ? 1.8 : 1);
  }
}

// ENTITY: Food
export class Food {
  constructor(
    public x: number,
    public y: number,
    public radius = 5,
    public value = 20
  ) {}
}

// SYSTEM: Movement
export class MovementSystem {
  static move(player: Player, dx: number, dy: number) {
    const len = Math.hypot(dx, dy);
    if (len === 0) return;

    const speed = player.getCurrentSpeed();
    player.x += (dx / len) * speed;
    player.y += (dy / len) * speed;
  }
}

// SYSTEM: Exp
export class ExpSystem {
  static checkEat(player: Player, foods: Food[]) {
    return foods.filter(f => {
      const dist = Math.hypot(f.x - player.x, f.y - player.y);
      if (dist < player.radius + f.radius) {
        player.addXP(f.value);
        return false;
      }
      return true;
    });
  }
  constructor(public player: Player) {}
  gain(amount: number) {
    this.player.addXP(amount);
  }
}

// SYSTEM: Combat
export class CombatSystem {
  static update(player: Player, delta: number) {
    if (!player.isAttacking) return;

    player.xp -= 30 * delta;
    if (player.xp <= 0) {
      player.xp = 0;
      player.isAttacking = false;
    }
  }
}

// GAME LOOP
export class Game {
  canvas: HTMLCanvasElement;
  ctx: CanvasRenderingContext2D;

  player: Player;
  foods: Food[] = [];

  dirX = 0;
  dirY = 0;

  lastTime = performance.now();

  mouseX = 0;
  mouseY = 0;

  expSystem: ExpSystem;

  constructor() {
    this.canvas = document.createElement("canvas");
    this.ctx = this.canvas.getContext("2d")!;
    document.body.appendChild(this.canvas);

    this.resize();
    addEventListener("resize", () => this.resize());

    this.player = new Player(
      this.canvas.width / 2,
      this.canvas.height / 2
    );
    this.expSystem = new ExpSystem(this.player);

    for (let i = 0; i < 100; i++) this.spawnFood();

    window.addEventListener("mousemove", e => {
      this.mouseX = e.clientX;
      this.mouseY = e.clientY;
    });

    window.addEventListener("click", () => {
      this.expSystem.gain(25); // test click XP
    });

    requestAnimationFrame(t => this.loop(t));
  }

  resize() {
    this.canvas.width = innerWidth;
    this.canvas.height = innerHeight;
  }

  spawnFood() {
    this.foods.push(
      new Food(Math.random() * 4000, Math.random() * 4000)
    );
  }

  loop(time: number) {
    const delta = (time - this.lastTime) / 1000;
    this.lastTime = time;

    this.update(delta);
    this.render();

    requestAnimationFrame((t) => this.loop(t));
  }

  update(delta: number) {
    // Di chuyển theo chuột
    const dx = this.mouseX - this.player.x;
    const dy = this.mouseY - this.player.y;
    const dist = Math.hypot(dx, dy);
    if (dist > 1) {
      this.player.x += (dx / dist) * this.player.baseSpeed;
      this.player.y += (dy / dist) * this.player.baseSpeed;
    }

    CombatSystem.update(this.player, delta);
    this.foods = ExpSystem.checkEat(this.player, this.foods);
    while (this.foods.length < 100) this.spawnFood();
  }

  drawXPBar() {
    const width = 40;
    const height = 5;
    const ratio = this.player.xp / this.player.nextXP;
    this.ctx.fillStyle = "#333";
    this.ctx.fillRect(this.player.x - width / 2, this.player.y - this.player.radius - 20, width, height);
    this.ctx.fillStyle = "#0f0";
    this.ctx.fillRect(this.player.x - width / 2, this.player.y - this.player.radius - 20, width * ratio, height);
  }

  render() {
    const ctx = this.ctx;
    ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);

    ctx.save();
    ctx.translate(
      this.canvas.width / 2 - this.player.x,
      this.canvas.height / 2 - this.player.y
    );

    ctx.fillStyle = "#6f0";
    this.foods.forEach(f => {
      ctx.beginPath();
      ctx.arc(f.x, f.y, f.radius, 0, Math.PI * 2);
      ctx.fill();
    });

    ctx.fillStyle = "#4af";
    ctx.beginPath();
    ctx.arc(this.player.x, this.player.y, this.player.radius, 0, Math.PI * 2);
    ctx.fill();
    if (this.player.isAttacking) {
      ctx.strokeStyle = "red";
      ctx.lineWidth = 3;
      ctx.beginPath();
      ctx.arc(this.player.x, this.player.y, 80, 0, Math.PI * 2);
      ctx.stroke();
    }
    ctx.restore();

    // UI
    ctx.fillStyle = "white";
    ctx.font = "16px Arial";
    ctx.fillText(`Lv.${this.player.level}`, 20, 30);
    ctx.fillText(`XP ${Math.floor(this.player.xp)} / ${this.player.nextXP}`, 20, 50);

    this.drawXPBar();
  }
}

// Enums and Types for Items, Results, Tutorial
export enum ItemType {
  GOLD,
  DIAMOND,
  ZOOM_OUT,
  GOLD_X2,
  CRIT_100
}

export interface Item {
  type: ItemType;
  value?: number;
  duration?: number; // giây
}

export class Barrel {
  opened = false;

  open(): Item[] {
    if (this.opened) return [];
    this.opened = true;

    Sound.play("barrel_open");

    return LootSystem.rollItems();
  }
}

export class LootSystem {
  static rollItems(): Item[] {
    const loot: Item[] = [];

    if (Math.random() < 0.4)
      loot.push({ type: ItemType.GOLD, value: 50 });

    if (Math.random() < 0.2)
      loot.push({ type: ItemType.DIAMOND, value: 1 });

    if (Math.random() < 0.1)
      loot.push({ type: ItemType.GOLD_X2, duration: 20 });

    if (Math.random() < 0.05)
      loot.push({ type: ItemType.CRIT_100, duration: 10 });

    return loot;
  }
}

// Tutorial & Progress
export enum TutorialStep {
  TAUNT = "taunt",
  COLLECT_ORB = "collect_orb",
  ATTACK = "attack",
  DONE = "done"
}

export interface TutorialProgress {
  step: TutorialStep;
  current: number;
  required: number;
}
export class TutorialManager {
  progress: TutorialProgress;

  constructor() {
    this.progress = this.load() ?? {
      step: TutorialStep.TAUNT,
      current: 0,
      required: 3
    };
  }

  update(action: TutorialStep, amount = 1) {
    if (this.progress.step !== action) return;

    this.progress.current += amount;

    if (this.progress.current >= this.progress.required) {
      this.nextStep();
    }

    this.save();
  }

  nextStep() {
    if (this.progress.step === TutorialStep.TAUNT) {
      this.progress = { step: TutorialStep.COLLECT_ORB, current: 0, required: 100 };
    } else if (this.progress.step === TutorialStep.COLLECT_ORB) {
      this.progress = { step: TutorialStep.ATTACK, current: 0, required: 5 };
    } else {
      this.progress = { step: TutorialStep.DONE, current: 0, required: 0 };
    }
  }

  save() {
    localStorage.setItem("tutorial", JSON.stringify(this.progress));
  }

  load(): TutorialProgress | null {
    const data = localStorage.getItem("tutorial");
    return data ? JSON.parse(data) : null;
  }
}
function renderTutorial(tutorial: TutorialManager) {
  if (tutorial.progress.step === TutorialStep.DONE) return;

  UI.showHint({
    text: getTutorialText(tutorial.progress),
    progress: `${tutorial.progress.current}/${tutorial.progress.required}`
  });
}
function getTutorialText(p: TutorialProgress): string {
  switch (p.step) {
    case TutorialStep.TAUNT:
      return "Nhấn nút chế nhạo (Taunt)";
    case TutorialStep.COLLECT_ORB:
      return "Thu thập hạt orb";
    case TutorialStep.ATTACK:
      return "Tấn công người chơi khác";
    default:
      return "";
  }
}

// Match Result
export interface PlayerResult {
  name: string;
  kills: number;
  deaths: number;
  orbs: number;
  score: number;
}

export class MatchResult {
  players: PlayerResult[];

  getRanking(): PlayerResult[] {
    return this.players.sort((a, b) => b.score - a.score);
  }
}

// Game Constants & Player Interface
const GAME_MODE_DURATION = 10 * 60; // 10 phút
const ITEM_RESPAWN_TIME = 20 * 1000; // 20 giây
const RESPAWN_SHIELD_TIME = 3 * 1000; // 3 giây

interface PlayerV2 {
  id: string;
  name: string;
  hp: number;
  maxHp: number;
  gold: number;
  diamonds: number;
  isAlive: boolean;
  critChance: number; // % chí mạng (100%)
  shieldActive: boolean;
  killStreak: number;
}
interface Collection {
  CRITICAL_HIT_GOLD_MULTIPLIER: number;
  TOMB_DIAMOND_DROP: number;
}
const COLLECTION: Collection = {
  CRITICAL_HIT_GOLD_MULTIPLIER: 3, // đánh người khác ra nhiều vàng
  TOMB_DIAMOND_DROP: 5            // mộ rơi kim cương
};
function attack(attacker: PlayerV2, target: PlayerV2) {
  if (!attacker.isAlive || !target.isAlive || target.shieldActive) return;

  const isCritical = attacker.critChance === 100;
  const baseDamage = 20;
  // (logic tấn công rút gọn, hãy phát triển tiếp nếu cần)
}

// Dummy Sound
class Sound {
  static play(name: string) {
    // Implement sound here
  }
}

// Dummy UI
const UI = {
  showHint: ({text, progress}: {text: string, progress: string}) => {
    // Implement UI changes here, e.g. show a tutorial box
  }
};

// Start the game
new Game();
