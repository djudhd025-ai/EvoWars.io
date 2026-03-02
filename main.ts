// (copy logic TypeScript từ file của bạn vào đây, rồi biên dịch sang JS)
// --- ENTITY CLASSES ---
export class Player {
  x: number;
  y: number;

  level = 1;
  xp = 0;
  nextXP = 100;

  radius = 20;
  baseSpeed = 4;

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
    }
  }

  getCurrentSpeed() {
    return this.baseSpeed * (this.isBoosting ? 1.8 : 1);
  }
}

export class Food {
  constructor(
    public x: number,
    public y: number,
    public radius = 5,
    public value = 20
  ) {}
}

// --- SYSTEMS ---
export class MovementSystem {
  static move(player: Player, dx: number, dy: number) {
    const len = Math.hypot(dx, dy);
    if (len === 0) return;

    const speed = player.getCurrentSpeed();
    player.x += (dx / len) * speed;
    player.y += (dy / len) * speed;
  }
}

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
}

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

// --- GAME LOOP ---
export class Game {
  canvas: HTMLCanvasElement;
  ctx: CanvasRenderingContext2D;
  player: Player;
  foods: Food[] = [];

  dirX = 0;
  dirY = 0;
  lastTime = performance.now();

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

    for (let i = 0; i < 100; i++) this.spawnFood();

    // Example input listeners
    window.addEventListener("keydown", (e) => {
      if (e.key === "ArrowLeft") this.dirX = -1;
      if (e.key === "ArrowRight") this.dirX = 1;
      if (e.key === "ArrowUp") this.dirY = -1;
      if (e.key === "ArrowDown") this.dirY = 1;
    });
    window.addEventListener("keyup", (e) => {
      if (["ArrowLeft", "ArrowRight"].includes(e.key)) this.dirX = 0;
      if (["ArrowUp", "ArrowDown"].includes(e.key)) this.dirY = 0;
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

    requestAnimationFrame(t => this.loop(t));
  }

  update(delta: number) {
    MovementSystem.move(this.player, this.dirX, this.dirY);
    CombatSystem.update(this.player, delta);

    this.foods = ExpSystem.checkEat(this.player, this.foods);
    while (this.foods.length < 100) this.spawnFood();
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

    ctx.restore();

    ctx.fillStyle = "white";
    ctx.font = "16px Arial";
    ctx.fillText(`Lv.${this.player.level}`, 20, 30);
    ctx.fillText(
      `XP ${Math.floor(this.player.xp)} / ${this.player.nextXP}`,
      20,
      50
    );
  }
}

// Khởi động game
new Game();
