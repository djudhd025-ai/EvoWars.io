<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <title>EvoWars.io – New Era</title>
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <div id="loading-screen">
    <img
      src="Screenshot_20260124_190655.jpg"
      class="logo"
      alt="EvoWars New Era"
    />

    <h1>Chào mừng đến với EvoWars.io</h1>
    <h2>Chiến đấu! Tiêu diệt! Tiến hóa!</h2>

    <p id="description" class="hidden">
      Nhân vật của bạn sẽ tiến hóa mỗi khi lên cấp. Khi tiến hóa,
      vũ khí và trang phục của bạn sẽ mạnh mẽ hơn.<br /><br />
      Thu thập các quả cầu năng lượng và tiêu diệt đối thủ để nhận
      kinh nghiệm và tăng kích thước. Mỗi cấp độ sẽ thay đổi ngoại
      hình và độ dài thanh kiếm.
    </p>

    <div class="progress-container">
      <div id="progress-bar"></div>
    </div>
    <span id="progress-text">0%</span>

    <button id="play-btn" class="hidden">PLAY</button>

    <div class="version">NEW ERA – v.19.18</div>
  </div>

  <script src="main.js"></script>
</body>
</html>
body {
  margin: 0;
  background: #111;
  font-family: Arial, sans-serif;
  color: white;
}

#loading-screen {
  text-align: center;
  padding-top: 40px;
}

.logo {
  width: 280px;
  margin-bottom: 20px;
}

.progress-container {
  width: 60%;
  height: 18px;
  background: #333;
  margin: 20px auto;
  border-radius: 10px;
  overflow: hidden;
}

#progress-bar {
  width: 0%;
  height: 100%;
  background: linear-gradient(90deg, #ff9800, #ffc107);
  transition: width 0.3s;
}

#play-btn {
  margin-top: 20px;
  padding: 12px 40px;
  font-size: 20px;
  background: #ff5722;
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
}

#play-btn:hover {
  background: #ff784e;
}

.hidden {
  display: none;
}

.version {
  margin-top: 20px;
  font-size: 14px;
  opacity: 0.7;
}
const progressBar = document.getElementById("progress-bar") as HTMLDivElement;
const progressText = document.getElementById("progress-text") as HTMLSpanElement;
const playBtn = document.getElementById("play-btn") as HTMLButtonElement;
const description = document.getElementById("description") as HTMLParagraphElement;

let progress = 0;

const loadingInterval = setInterval(() => {
  progress += 2;
  progressBar.style.width = progress + "%";
  progressText.textContent = progress + "%";

  // Khi vượt 50% thì hiện nội dung
  if (progress >= 50) {
    description.classList.remove("hidden");
  }

  // Khi hoàn tất
  if (progress >= 100) {
    clearInterval(loadingInterval);
    playBtn.classList.remove("hidden");
    progressText.textContent = "Hoàn tất!";
  }
}, 100);

playBtn.addEventListener("click", () => {
  // Chuyển vào game
  window.location.href = "game.html";
});
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <title>EvoWars.io – New Era</title>
  <link rel="stylesheet" href="style.css" />
</head>
<body>

  <div id="menu">

    <!-- Logo -->
    <img src="assets/logo.png" class="logo" alt="EvoWars New Era" />

    <!-- Phiên bản -->
    <div class="version">v.19.18</div>

    <!-- Tên người chơi -->
    <div class="player-name">Warrior#74248</div>

    <!-- Nút PLAY -->
    <button id="playBtn" class="play-btn">PLAY</button>

    <!-- Kích hoạt tăng cường -->
    <div class="boost">
      <button id="boostBtn">KÍCH HOẠT TĂNG CƯỜNG</button>
    </div>

  </div>

  <script src="main.js"></script>
</body>
</html>
body {
  margin: 0;
  height: 100vh;
  background: radial-gradient(#2b2b2b, #0f0f0f);
  background-image: url("https://www.transparenttextures.com/patterns/hexellence.png");
  font-family: Arial, sans-serif;
  color: white;
}

#menu {
  text-align: center;
  padding-top: 40px;
}

.logo {
  width: 300px;
}

.version {
  margin-top: 6px;
  font-size: 14px;
  opacity: 0.7;
}

.player-name {
  margin-top: 20px;
  font-size: 18px;
}

.play-btn {
  margin-top: 20px;
  padding: 16px 60px;
  font-size: 26px;
  font-weight: bold;
  background: #c62828;
  color: white;
  border: none;
  border-radius: 10px;
  cursor: pointer;
}

.play-btn:hover {
  background: #e53935;
}

.boost {
  margin-top: 30px;
}

.boost button {
  padding: 12px 30px;
  font-size: 16px;
  background: #455a64;
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
}

.boost button:hover {
  background: #607d8b;
}
const playBtn = document.getElementById("playBtn") as HTMLButtonElement;
const boostBtn = document.getElementById("boostBtn") as HTMLButtonElement;

playBtn.addEventListener("click", () => {
  console.log("Vào trận đấu");
  window.location.href = "game.html";
});

boostBtn.addEventListener("click", () => {
  alert("Tăng cường đã được kích hoạt!");
});
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <title>Thành tựu - EvoWars</title>
  <link rel="stylesheet" href="achievements.css" />
</head>
<body>

<div id="achievements">

  <!-- CỘT TRÁI: THÀNH TỰU -->
  <div class="column">
    <h2>THÀNH TỰU</h2>

    <div class="achievement">
      <span>Trận đã chơi</span>
      <progress value="2" max="10"></progress>
      <b>2 / 10</b>
    </div>

    <div class="achievement">
      <span>Trận đội thắng</span>
      <progress value="0" max="5"></progress>
      <b>0 / 5</b>
    </div>

    <div class="achievement">
      <span>Quả cầu đã thu thập</span>
      <progress value="1358" max="10000"></progress>
      <b>1358</b>
    </div>

    <div class="achievement">
      <span>Tử vong</span>
      <progress value="31" max="100"></progress>
      <b>31</b>
    </div>
  </div>

  <!-- CỘT GIỮA: COMBO HẠ GỤC -->
  <div class="column">
    <h2>HẠ GỤC</h2>

    <div class="achievement">
      <span>Hạ gục</span>
      <progress value="25" max="200"></progress>
      <b>25</b>
    </div>

    <div class="achievement">
      <span>Double hạ gục</span>
      <progress value="0" max="5"></progress>
      <b>0</b>
    </div>

    <div class="achievement">
      <span>Triple hạ gục</span>
      <progress value="0" max="3"></progress>
      <b>0</b>
    </div>

    <div class="achievement">
      <span>Quadra / Penta / Mega</span>
      <b>0</b>
    </div>
  </div>

  <!-- CỘT PHẢI: VÒNG TỐT NHẤT -->
  <div class="column best-round">
    <h2>VÒNG TỐT NHẤT</h2>
    <div class="score">28175</div>

    <div class="stats">
      <div>🎮 Trận chơi: 1</div>
      <div>⚔️ Hạ gục: 4</div>
      <div>💀 Tử vong: 5</div>
      <div>🔮 Quả cầu: 399</div>
    </div>

    <button id="claimChest">Nhận rương</button>
  </div>

</div>

<script src="achievements.js"></script>
</body>
</html>
body {
  margin: 0;
  background: #111;
  color: white;
  font-family: Arial, sans-serif;
}

#achievements {
  display: flex;
  gap: 20px;
  padding: 20px;
}

.column {
  flex: 1;
  background: #1c1c1c;
  border-radius: 10px;
  padding: 15px;
}

h2 {
  text-align: center;
  color: #ffcc00;
}

.achievement {
  margin-bottom: 12px;
}

progress {
  width: 100%;
  height: 16px;
}

.best-round .score {
  font-size: 36px;
  text-align: center;
  color: gold;
  margin: 10px 0;
}

.stats div {
  margin: 6px 0;
}

button {
  width: 100%;
  padding: 12px;
  font-size: 18px;
  background: #c62828;
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
}
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
import { Player } from "../entities/Player";

export class MovementSystem {
  static move(player: Player, dx: number, dy: number) {
    const len = Math.hypot(dx, dy);
    if (len === 0) return;

    const speed = player.getCurrentSpeed();
    player.x += (dx / len) * speed;
    player.y += (dy / len) * speed;
  }
}
import { Player } from "../entities/Player";
import { Food } from "../entities/Food";

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
import { Player } from "../entities/Player";

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
import { Player } from "../entities/Player";
import { Food } from "../entities/Food";
import { MovementSystem } from "../systems/MovementSystem";
import { ExpSystem } from "../systems/ExpSystem";
import { CombatSystem } from "../systems/CombatSystem";

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
import { Player } from "./entities/Player";
export class Player {
    constructor(x, y) {
        this.level = 1;
        this.xp = 0;
        this.nextXP = 100;
        this.radius = 20;
        this.speed = 4;
        this.x = x;
        this.y = y;
    }
    addXP(amount) {
        this.xp += amount;
        while (this.xp >= this.nextXP) {
            this.xp -= this.nextXP;
            this.level++;
            this.nextXP += 100;
            this.radius += 4;
            this.speed *= 0.95;
        }
    }
}
export class Game {
    constructor() {
        this.mouseX = 0;
        this.mouseY = 0;
        this.canvas = document.createElement("canvas");
        document.body.appendChild(this.canvas);
        this.ctx = this.canvas.getContext("2d");
        this.resize();
        window.addEventListener("resize", () => this.resize());
        this.player = new Player(this.canvas.width / 2, this.canvas.height / 2);
        window.addEventListener("mousemove", e => {
            this.mouseX = e.clientX;
            this.mouseY = e.clientY;
        });
        requestAnimationFrame(() => this.loop());
    }
    resize() {
        this.canvas.width = innerWidth;
        this.canvas.height = innerHeight;
    }
    loop() {
        this.update();
        this.render();
        requestAnimationFrame(() => this.loop());
    }
    update() {
        const dx = this.mouseX - this.player.x;
        const dy = this.mouseY - this.player.y;
        const dist = Math.hypot(dx, dy);
        if (dist > 1) {
            this.player.x += (dx / dist) * this.player.speed;
            this.player.y += (dy / dist) * this.player.speed;
        }
    }
    render() {
        this.ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);
        // Player
        this.ctx.beginPath();
        this.ctx.arc(this.player.x, this.player.y, this.player.radius, 0, Math.PI * 2);
        this.ctx.fillStyle = "#4af";
        this.ctx.fill();
    }
}
new Game();
drawLevelUI();
{
    this.ctx.fillStle = "white";
    this.ctx.font = "16px Arial";
    this.ctx.fillText(`Lv.${this.player.level}`, this.player.x - 15, this.player.y - this.player.radius - 10);
}
class Game {
    drawLevelUI() {
        this.ctx.fillStyle = "white";
        this.ctx.font = "16px Arial";
        this.ctx.textAlign = "center";
        this.ctx.fillText(`Lv.${this.player.level}`, this.player.x, this.player.y - this.player.radius - 10);
        render();
        {
            this.ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);
        }
        // Player
        this.ctx.beginPath();
        this.ctx.arc(this.player.x, this.player.y, this.player.radius, 0, Math.PI * 2);
        this.ctx.fillStyle = "#4af";
        this.ctx.fill();
        this.drawLevelUI();
    }
}
export class ExpSystem {
    constructor(player) {
        this.player = player;
    }
    gain(amount) {
        this.player.addXP(amount);
    }
}
import { ExpSystem } from "../systems/ExpSystem";
export class Game {
    constructor() {
        this.mouseX = 0;
        this.mouseY = 0;
        this.canvas = document.createElement("canvas");
        document.body.appendChild(this.canvas);
        this.ctx = this.canvas.getContext("2d");
        this.resize();
        window.addEventListener("resize", () => this.resize());
        this.player = new Player(this.canvas.width / 2, this.canvas.height / 2);
        this.expSystem = new ExpSystem(this.player);
        window.addEventListener("mousemove", e => {
            this.mouseX = e.clientX;
            this.mouseY = e.clientY;
        });
        // TEST: click chuột để nhận XP
        window.addEventListener("click", () => {
            this.expSystem.gain(25);
        });
        requestAnimationFrame(() => this.loop());
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
}
this.drawXPBar();
export class Player {
}
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
constructor(x, number, y, number);
{
    this.x = x;
    this.y = y;
}
addXP(amount, number);
{
    this.xp += amount;
    while (this.xp >= this.nextXP) {
        this.xp -= this.nextXP;
        this.level++;
        this.nextXP = Math.floor(this.nextXP * 1.4);
        this.radius += 4;
        this.baseSpeed *= 0.95;
    }
}
getCurrentSpeed();
{
    return this.baseSpeed * (this.isBoosting ? 1.8 : 1);
}
export class Food {
    constructor(x, y, radius = 5, value = 20) {
        this.x = x;
        this.y = y;
        this.radius = radius;
        this.value = value;
    }
}
export class MovementSystem {
    static move(player, dirX, dirY) {
        const len = Math.hypot(dirX, dirY);
        if (len === 0)
            return;
        const speed = player.getCurrentSpeed();
        player.x += (dirX / len) * speed;
        player.y += (dirY / len) * speed;
    }
}
import { Food } from "../entities/Food";
export class ExpSystem {
    static checkEat(player, foods) {
        return foods.filter(f => {
            const dx = f.x - player.x;
            const dy = f.y - player.y;
            const dist = Math.hypot(dx, dy);
            if (dist < player.radius + f.radius) {
                player.addXP(f.value);
                return false;
            }
            return true;
        });
    }
}
export class CombatSystem {
    static update(player, delta) {
        if (!player.isAttacking)
            return;
        // attack tốn XP
        player.xp -= 30 * delta;
        if (player.xp <= 0) {
            player.xp = 0;
            player.isAttacking = false;
        }
    }
}
import { MovementSystem } from "../systems/MovementSystem";
import { CombatSystem } from "../systems/CombatSystem";
export class Game {
    constructor() {
        this.foods = [];
        this.dirX = 0;
        this.dirY = 0;
        this.lastTime = performance.now();
        this.canvas = document.createElement("canvas");
        this.ctx = this.canvas.getContext("2d");
        document.body.appendChild(this.canvas);
        this.resize();
        addEventListener("resize", () => this.resize());
        this.player = new Player(this.canvas.width / 2, this.canvas.height / 2);
        for (let i = 0; i < 100; i++) {
            this.spawnFood();
        }
        requestAnimationFrame(t => this.loop(t));
    }
    resize() {
        this.canvas.width = innerWidth;
        this.canvas.height = innerHeight;
    }
    spawnFood() {
        this.foods.push(new Food(Math.random() * 4000, Math.random() * 4000));
    }
    loop(time) {
        const delta = (time - this.lastTime) / 1000;
        this.lastTime = time;
        this.update(delta);
        this.render();
        requestAnimationFrame(t => this.loop(t));
    }
    update(delta) {
        MovementSystem.move(this.player, this.dirX, this.dirY);
        CombatSystem.update(this.player, delta);
        this.foods = ExpSystem.checkEat(this.player, this.foods);
        while (this.foods.length < 100) {
            this.spawnFood();
        }
    }
    render() {
        const ctx = this.ctx;
        ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);
        ctx.save();
        ctx.translate(this.canvas.width / 2 - this.player.x, this.canvas.height / 2 - this.player.y);
        // food
        ctx.fillStyle = "#6f0";
        this.foods.forEach(f => {
            ctx.beginPath();
            ctx.arc(f.x, f.y, f.radius, 0, Math.PI * 2);
            ctx.fill();
        });
        // player
        ctx.beginPath();
        ctx.arc(this.player.x, this.player.y, this.player.radius, 0, Math.PI * 2);
        ctx.fillStyle = "#4af";
        ctx.fill();
        // attack range
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
    }
}
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
const GAME_MODE_DURATION = 10 * 60; // 10 phút
const ITEM_RESPAWN_TIME = 20 * 1000; // 20 giây
const RESPAWN_SHIELD_TIME = 3 * 1000; // 3 giây
interface Player {
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
function attack(attacker: Player, target: Player) {
  if (!attacker.isAlive || !target.isAlive || target.shieldActive) return;

  const isCritical = attacker.critChance === 100;
  const baseDamage = 20;
  const damage = isCritical ? baseDamage * 2 : baseDamage;

  target.hp -= damage;

  if (isCritical) {
    const goldEarned = 10 * COLLECTION.CRITICAL_HIT_GOLD_MULTIPLIER;
    attacker.gold += goldEarned;
    spawnGold(target);
  }

  if (target.hp <= 0) {
    killPlayer(attacker, target);
  }
}
function checkKillStreak(player: Player) {
  if (player.killStreak === 2) {
    notify("DOUBLE KILL");
  }
  if (player.killStreak === 5) {
    notify("MEGA KILL");
  }
}
function respawn(player: Player) {
  player.hp = player.maxHp;
  player.isAlive = true;
  player.shieldActive = true;
  player.killStreak = 0;

  showRespawnShield(player);

  setTimeout(() => {
    player.shieldActive = false;
  }, RESPAWN_SHIELD_TIME);
}
function spawnItem(type: "gold" | "diamond", x: number, y: number) {
  const itemId = crypto.randomUUID();

  setTimeout(() => {
    removeItem(itemId);
  }, ITEM_RESPAWN_TIME);
}
function showDeathScreen() {
  return {
    hints: true,
    killedBy: true,
    nextEvolution: true,
    ourGames: false // chỉ hiện chữ "TRÒ CHƠI CỦA CHÚNG TÔI"
  };
}
setTimeout(() => {
  endGame();
}, GAME_MODE_DURATION * 1000);
enum MonsterHuntMode {
  EASY = "Easy",
  NORMAL = "Normal",
  HARD = "Hard",
  EXPERT = "Expert",
  MASTER = "Master",
}

interface ModeProgress {
  mode: MonsterHuntMode
  currentStage: number
  unlocked: boolean
  completed: boolean
}
export interface ModeConfig {
  maxStage: number | null; // null = vô hạn
}

export const MODE_CONFIG: Record<MonsterHuntMode, ModeConfig> = {
  [MonsterHuntMode.Easy]: { maxStage: 5 },
  [MonsterHuntMode.Normal]: { maxStage: 5 },
  [MonsterHuntMode.Hard]: { maxStage: 5 },
  [MonsterHuntMode.Expert]: { maxStage: 5 },
  [MonsterHuntMode.Master]: { maxStage: null }, // vô hạn
};
export function unlockNextMode(
  completedMode: MonsterHuntMode,
  unlockedModes: Set<MonsterHuntMode>
): Set<MonsterHuntMode> {
  const index = MODE_ORDER.indexOf(completedMode);

  if (index >= 0 && index < MODE_ORDER.length - 1) {
    unlockedModes.add(MODE_ORDER[index + 1]);
  }

  return unlockedModes;
}
export function isModeCompleted(
  mode: MonsterHuntMode,
  stage: number
): boolean {
  const config = MODE_CONFIG[mode];
  if (config.maxStage === null) return false; // Master không có kết thúc
  return stage >= config.maxStage;
}
export function getMasterDifficultyTier(stage: number): string {
  if (stage <= 10) return "Tier 1 (5 → 10)";
  if (stage <= 15) return "Tier 2 (10 → 15)";
  if (stage <= 20) return "Tier 3 (15 → 20)";
  if (stage <= 100) return "Tier 4 (20 → 100)";
  return "Tier MAX (∞)";
}
let unlockedModes = new Set<MonsterHuntMode>([MonsterHuntMode.Easy]);

let currentMode = MonsterHuntMode.Easy;
let currentStage = 5;

if (isModeCompleted(currentMode, currentStage)) {
  unlockedModes = unlockNextMode(currentMode, unlockedModes);
}

console.log("Unlocked modes:", [...unlockedModes]);
export interface Player {
  id: string;
  xp: number;
  lives: number;
  shardsBlue: number;
  shieldActive: boolean;
}

export interface Monster {
  id: string;
  damage: number;
}
export const MonsterHuntRules = {
  pvpEnabled: false,                 // ❌ Người chơi không tấn công nhau
  runXpCost: 0,                      // ❌ Chạy không giảm XP
  deathXpLoss: 0,                    // ❌ Bị tấn công không mất XP
};
export class ShieldSystem {
  private static SHIELD_DURATION = 3000; // ms

  static activate(player: Player) {
    player.shieldActive = true;

    // Hiệu ứng xoay 3 hình dạng màu xanh (UI xử lý)
    console.log("Shield activated: rotating 3 blue shapes");

    setTimeout(() => {
      player.shieldActive = false;
      console.log("Shield expired");
    }, ShieldSystem.SHIELD_DURATION);
  }
}
export function monsterAttackPlayer(
  monster: Monster,
  player: Player
) {
  if (player.shieldActive) {
    player.lives -= 1;
    console.log(
      `Monster ${monster.id} hit shielded player ${player.id}, -1 life`
    );
    return;
  }

  // Không có khiên → mất mạng bình thường
  player.lives -= 1;
}
export function playerAttackPlayer() {
  // Monster Hunt: PvP bị vô hiệu
  return;
}
export function getBlueShardReward(stage: number): number {
  return Math.min(stage, 5); // Màn 1 → 5
}
export function completeEvent(
  players: Player[],
  stage: number
) {
  const reward = getBlueShardReward(stage);

  players.forEach(player => {
    player.shardsBlue += reward;
  });

  console.log(
    `Event completed: all players received ${reward} blue shards`
  );
}
enum Difficulty {
  Easy = "Dễ",
  Normal = "Thường",
  Hard = "Khó",
  Expert = "Chuyên",
  Master = "Bậc thầy"
}

let currentDifficulty: Difficulty = Difficulty.Easy;

function setDifficulty(level: Difficulty) {
  currentDifficulty = level;
  // cập nhật game settings tương ứng
}
const buttons = document.querySelectorAll<HTMLButtonElement>("#difficulty-menu button");

buttons.forEach(btn => {
  btn.addEventListener("click", () => {
    const diff = btn.dataset.diff as keyof typeof Difficulty;
    setDifficulty(Difficulty[diff]);

    // Hiển thị phần thưởng (ví dụ)
    showReward(`Bạn đã chọn: ${btn.textContent}`);
  });
});
let skillLevel = 1;

document.getElementById("upgrade-skill")?.addEventListener("click", () => {
  skillLevel++;
  alert(`Kỹ năng tăng lên cấp ${skillLevel}`);
  // cập nhật sức mạnh/hiệu ứng kĩ năng
});
function showReward(message: string) {
  const rewardScreen = document.getElementById("reward-screen");
  const rewardText = document.getElementById("reward-text");

  rewardText!.textContent = message;
  rewardScreen!.classList.remove("hidden");
}
.hidden {
  display: none;
}
// Các mốc sự kiện
const EVENT_STAGES = [20, 40, 80, 160];

interface EventProgress {
  stageIndex: number;   // đang ở mốc nào (0 → 3)
  completed: number;    // số đã hoàn thành
}
let eventProgress: EventProgress = {
  stageIndex: 0, // bắt đầu từ 0/20
  completed: 0
};
function getEventDisplay(progress: EventProgress): string {
  const max = EVENT_STAGES[progress.stageIndex];
  return `${progress.completed}/${max}`;
}

// Ví dụ
console.log(getEventDisplay(eventProgress)); // 0/20
function addProgress(progress: EventProgress, amount: number = 1) {
  const max = EVENT_STAGES[progress.stageIndex];

  progress.completed += amount;

  if (progress.completed >= max) {
    progress.completed = max;
    onStageCompleted(progress);
  }
}
function onStageCompleted(progress: EventProgress) {
  console.log(`Hoàn thành mốc ${EVENT_STAGES[progress.stageIndex]}`);

  // Trao phần thưởng
  giveStageReward(progress.stageIndex);

  // Chuyển sang mốc tiếp theo nếu còn
  if (progress.stageIndex < EVENT_STAGES.length - 1) {
    progress.stageIndex++;
    progress.completed = 0;
  } else {
    console.log("Đã hoàn thành toàn bộ SỰ KIỆN");
  }
}
addProgress(eventProgress); // 1/20
addProgress(eventProgress, 19); // 20/20 → lên mốc 40
console.log(getEventDisplay(eventProgress)); // 0/40
let nextStageCountdown = 10;

function startNextStageTimer(onFinish: () => void) {
  const timer = setInterval(() => {
    nextStageCountdown--;
    updateUIText(`Màn tiếp theo trong 00:${nextStageCountdown}`);

    if (nextStageCountdown <= 0) {
      clearInterval(timer);
      onFinish();
    }
  }, 1000);
}
let prepareTime = 30;

function startPreparePhase(onFight: () => void) {
  const timer = setInterval(() => {
    prepareTime--;
    updateUIText(`Bắt đầu trong ${prepareTime}s`);

    if (prepareTime <= 0) {
      clearInterval(timer);
      onFight();
    }
  }, 1000);
}
function onFightButtonPressed() {
  startBattle();
}
reward = baseReward + (score × pointRate)
const REWARD_CONFIG = {
  baseReward: 500,     // thưởng tối thiểu
  pointRate: 2         // mỗi 1 điểm = 2 vàng
};
function calculateRewardByScore(score: number): number {
  return REWARD_CONFIG.baseReward + score * REWARD_CONFIG.pointRate;
}
function getStageBaseReward(stageIndex: number): number {
  return 500 + stageIndex * 300;
}
function calculateFinalReward(
  stageIndex: number,
  score: number
): number {
  const base = getStageBaseReward(stageIndex);
  return base + score * REWARD_CONFIG.pointRate;
}
// Skill
export interface Skill {
  id: string;
  level: number;
}

// Reward
export interface Reward {
  rank: number;
  exp: number;
  gold: number;
  gem: number;
}

// Completion Result
export interface MonsterHuntResult {
  mode: "Easy" | "Master";
  completedText: string;
  playerName: string;
  avatar: string;
  totalScore: number;
  skills: Skill[];
  shards: number;
  totalSkills: number;
  reward: Reward;
}
const resultMaster: MonsterHuntResult = {
  mode: "Master",
  completedText: "MONSTER HUNT COMPLETED",
  playerName: "I'm Teacher",
  avatar: "boss_03.png",
  totalScore: 347643,

  skills: [
    { id: "power", level: 11 },
    { id: "fire", level: 10 },
    { id: "heal", level: 7 },
    { id: "lightning", level: 6 },
    { id: "ice", level: 3 },
    { id: "crit", level: 4 },
  ],

  shards: 198,
  totalSkills: 41,

  reward: {
    rank: 16,
    exp: 4636,
    gold: 34765,
    gem: 140,
  },
};
function renderCompletion(result: MonsterHuntResult) {
  console.log(`MONSTER HUNT - ${result.mode}`);
  console.log(result.completedText);

  console.log("Player:", result.playerName);
  console.log("Total Score:", result.totalScore);

  console.log("Skills:");
  result.skills.forEach(skill => {
    console.log(`- ${skill.id.toUpperCase()} Lv.${skill.level}`);
  });

  console.log("Shards:", result.shards);
  console.log("Total Skills:", result.totalSkills);

  console.log("Rewards:");
  console.log("Rank:", result.reward.rank);
  console.log("EXP:", result.reward.exp);
  console.log("Gold:", result.reward.gold);
  console.log("Gem:", result.reward.gem);
}
export interface MonsterHuntResult {
  mode: "Easy" | "Master";
  completedText: string;

  playerName: string;
  avatar: string;
  totalScore: number;

  playersInMap: number; // 👈 số người trong bản đồ

  skills: Skill[];
  shards: number;
  totalSkills: number;
  reward: Reward;
}
function getSurvivorText(playersInMap: number): string | null {
  if (playersInMap === 1) {
    return "Sống sót cuối cùng!";
  }
  return null;
}
function renderCenterResult(result: MonsterHuntResult) {
  console.log(result.playerName);

  const survivorText = getSurvivorText(result.playersInMap);
  if (survivorText) {
    console.log(survivorText);
  }

  console.log("Total Score:", result.totalScore);
}
const resultMaster: MonsterHuntResult = {
  mode: "Master",
  completedText: "MONSTER HUNT COMPLETED",

  playerName: "I'm Teacher",
  avatar: "boss_03.png",
  totalScore: 347643,

  playersInMap: 1, // 👈 chỉ còn 1 người

  skills: [],
  shards: 198,
  totalSkills: 41,

  reward: {
    rank: 16,
    exp: 4636,
    gold: 34765,
    gem: 140,
  },
};
I'm Teacher
Sống sót cuối cùng!
Total Score: 347643
{result.playersInMap === 1 && (
  <div className="survivor-text">
    Sống sót cuối cùng!
  </div>
)}
.survivor-text {
  color: #ffd84d;
  font-weight: 700;
  margin-top: 6px;
  text-shadow: 0 0 8px rgba(255,216,77,0.8);
}
export enum MonsterType {
  HORDE = "HORDE",        // Quái thường, số lượng lớn
  ELITE = "ELITE",        // Quái tinh nhuệ
  BOSS = "BOSS"           // Trùm
}
// Độ khó bản đồ
export enum MapDifficulty {
  ORANGE = "ORANGE",   // Dễ
  GREEN = "GREEN",     // Trung bình
  PURPLE = "PURPLE"    // Khó
}
export interface Monster {
  id: string
  name: string
  type: MonsterType

  hp: number
  damage: number
  speed: number

  expReward: number
  goldReward: number

  skills?: MonsterSkill[]
}
export interface MonsterSkill {
  name: string
  cooldown: number
  effect: string
}
export const DifficultyMultiplier = {
  [MapDifficulty.ORANGE]: {
    hp: 1,
    damage: 1,
    exp: 1
  },
  [MapDifficulty.GREEN]: {
    hp: 1.8,
    damage: 1.5,
    exp: 1.6
  },
  [MapDifficulty.PURPLE]: {
    hp: 3,
    damage: 2.2,
    exp: 2.5
  }
}
export function createMonster(
  base: Monster,
  difficulty: MapDifficulty
): Monster {

  const scale = DifficultyMultiplier[difficulty]

  return {
    ...base,
    hp: Math.floor(base.hp * scale.hp),
    damage: Math.floor(base.damage * scale.damage),
    expReward: Math.floor(base.expReward * scale.exp)
  }
}
const ghostHorde: Monster = {
  id: "ghost_01",
  name: "Ghost",
  type: MonsterType.HORDE,
  hp: 100,
  damage: 10,
  speed: 3,
  expReward: 30,
  goldReward: 5
}
const eliteReaper: Monster = {
  id: "elite_reaper",
  name: "Elite Reaper",
  type: MonsterType.ELITE,
  hp: 800,
  damage: 60,
  speed: 2,
  expReward: 300,
  goldReward: 50,
  skills: [
    { name: "Spin Slash", cooldown: 6, effect: "AOE damage" }
  ]
}
const pumpkinBoss: Monster = {
  id: "boss_pumpkin",
  name: "Pumpkin King",
  type: MonsterType.BOSS,
  hp: 12000,
  damage: 180,
  speed: 1.2,
  expReward: 5000,
  goldReward: 500,
  skills: [
    { name: "Laser Beam", cooldown: 8, effect: "Line damage" },
    { name: "Summon Horde", cooldown: 12, effect: "Spawn monsters" }
  ]
}
export interface MonsterWave {
  wave: number
  monsters: Monster[]
  timeLimit: number // giây
}
export interface MonsterHuntMap {
  id: string
  name: string
  difficulty: MapDifficulty
  waves: MonsterWave[]
}
const monsterHuntMap: MonsterHuntMap = {
  id: "map_ghost_forest",
  name: "Ghost Forest",
  difficulty: MapDifficulty.GREEN,
  waves: [
    {
      wave: 1,
      timeLimit: 90,
      monsters: Array(20).fill(
        createMonster(ghostHorde, MapDifficulty.GREEN)
      )
    },
    {
      wave: 5,
      timeLimit: 120,
      monsters: [
        createMonster(eliteReaper, MapDifficulty.GREEN)
      ]
    },
    {
      wave: 10,
      timeLimit: 180,
      monsters: [
        createMonster(pumpkinBoss, MapDifficulty.GREEN)
      ]
    }
  ]
}
function startWave(wave: MonsterWave) {
  console.log(`Wave ${wave.wave} bắt đầu!`)

  wave.monsters.forEach(monster => {
    spawnMonster(monster)
  })
}

function spawnMonster(monster: Monster) {
  // hook vào engine game
}
type Rarity = "Common" | "Rare" | "Epic" | "Legendary";

interface Player {
  gold: number;
  diamond: number;
}

interface Card {
  name: string;
  level: number;
  maxLevel: number;
}

interface Reward {
  card?: Card;
  emote?: boolean;
  grave?: boolean;
  bonusDiamond?: number;
}
const chestRates: Record<string, Record<Rarity, number>> = {
  WAR: { Common: 37, Rare: 28, Epic: 20, Legendary: 15 },
  IRON: { Common: 80, Rare: 13, Epic: 7, Legendary: 0 },
  SILVER: { Common: 66, Rare: 20, Epic: 8, Legendary: 6 },
  GOLD: { Common: 59, Rare: 25, Epic: 9, Legendary: 7 },
  DIAMOND: { Common: 51, Rare: 30, Epic: 11, Legendary: 8 },
  CHAMPION: { Common: 45, Rare: 40, Epic: 10, Legendary: 5 }
};
function rollRarity(rates: Record<Rarity, number>): Rarity {
  const roll = Math.random() * 100;
  let total = 0;

  for (const rarity in rates) {
    total += rates[rarity as Rarity];
    if (roll <= total) return rarity as Rarity;
  }
  return "Common";
}
function openChest(
  chestType: keyof typeof chestRates,
  player: Player,
  card: Card
): Reward {
  const rarity = rollRarity(chestRates[chestType]);

  // +10 thẻ
  card.level += 10;

  let bonusDiamond = 0;
  if (card.level >= card.maxLevel) {
    card.level = card.maxLevel;
    bonusDiamond = 1; // thẻ full → +1 kim cương
    player.diamond += 1;
  }

  return {
    card,
    emote: Math.random() < 0.1, // 10% chế nhạo
    grave: Math.random() < 0.05, // 5% ngôi mộ
    bonusDiamond
  };
}
const player: Player = {
  gold: 1_000_000,
  diamond: 1000
};

const weaponCard: Card = {
  name: "Laser Gun",
  level: 20,
  maxLevel: 100
};

const reward = openChest("CHAMPION", player, weaponCard);

console.log("Nhận được:", reward);
console.log("Kim cương hiện tại:", player.diamond);
function formatNumber(value: number): string {
  return Math.floor(value).toString();
}
function formatResource(value: number): string {
  // < 1 triệu → hiển thị số thường
  if (value < 1_000_000) {
    return Math.floor(value).toString();
  }

  // Hàng triệu
  if (value < 1_000_000_000) {
    return (value / 1_000_000).toFixed(2) + 'M';
  }

  // Hàng tỉ
  return (value / 1_000_000_000).toFixed(2) + 'B';
}
console.log(formatResource(250));            // 250
console.log(formatResource(2500));           // 2500
console.log(formatResource(9999));           // 9999

console.log(formatResource(2_500_000));      // 2.50M
console.log(formatResource(90_000_000));     // 90.00M
console.log(formatResource(9_000_000_000));  // 9.00B
const goldDisplay = formatResource(goldValue);
const gemDisplay  = formatResource(gemValue);
function formatResource(value: number): string {
  if (value < 1000) {
    return value.toString();
  }

  return (value / 1000).toFixed(2) + 'K';
}
function getResourceByLevel(
  baseValue: number,
  level: number
): { value: number; display: string } {
  const realValue = baseValue * Math.pow(2, level - 1);

  return {
    value: realValue,
    display: formatResource(realValue),
  };
}
// Ví dụ 1: số nhỏ
console.log(getResourceByLevel(2, 1));
// { value: 2, display: "2" }

console.log(getResourceByLevel(2, 2));
// { value: 4, display: "4" }

// Ví dụ 2: hàng nghìn
console.log(getResourceByLevel(2500, 1));
// { value: 2500, display: "2.50K" }

console.log(getResourceByLevel(2500, 2));
// { value: 5000, display: "5.00K" }
const gold = getResourceByLevel(2500, level);
const gem  = getResourceByLevel(2, level);
function formatResource(value: number): string {
  if (value < 1_000_000) {
    return Math.floor(value).toString();
  }

  if (value < 1_000_000_000) {
    return (value / 1_000_000).toFixed(2) + 'M';
  }

  return (value / 1_000_000_000).toFixed(2) + 'B';
}
function getValueByLevel(baseValue: number, level: number): number {
  return baseValue * Math.pow(2, level - 1);
}
function claimResource(baseValue: number): {
  totalValue: number;
  display: string;
} {
  let total = 0;

  for (let level = 1; level <= 5; level++) {
    total += getValueByLevel(baseValue, level);
  }

  return {
    totalValue: total,
    display: formatResource(total),
  };
}
const gold = claimResource(2500);

console.log(gold.totalValue); // 77500
console.log(gold.display);    // "77500"
const gem = claimResource(2_500_000);

console.log(gem.totalValue); // 77,500,000
console.log(gem.display);    // "77.50M"
onClaimButtonClick() {
  const goldReward = claimResource(goldBase);
  player.gold += goldReward.totalValue;
}
const MAX_LEVEL = 5;

function getValueByLevel(baseValue: number, level: number): number {
  if (level > MAX_LEVEL) level = MAX_LEVEL;
  return baseValue * Math.pow(2, level - 1);
}
const MAX_LEVEL = 5;

function getGemByLevel(level: number): number {
  const baseGem = 2;

  if (level < 1) level = 1;
  if (level > MAX_LEVEL) level = MAX_LEVEL;

  return baseGem * Math.pow(2, level - 1);
}

function claimAllGems(): number {
  let total = 0;
  for (let level = 1; level <= MAX_LEVEL; level++) {
    total += getGemByLevel(level);
  }
  return total;
}
console.log(claimAllGems()); // 62
// Độ hiếm
export type Rarity = "common" | "rare" | "epic" | "legendary" | "mythic";

// Nhóm cấp
export type EvolutionTier = "EVOLUTION_1_40" | "EVOLUTION_41_50";

// Evolution
export interface Evolution {
  id: number;
  nameVN: string;          // Tên tiếng Việt
  level: number;           // Cấp độ
  tier: EvolutionTier;     // Nhóm cấp
  rarity: Rarity;          // Độ hiếm
  baseDamage: number;      // Sát thương gốc
  totalDamage: number;     // Tổng sát thương (hiển thị khung dưới)
  sprite: string;          // Đường dẫn hình nhân vật
}
export const EVOLUTIONS: Evolution[] = [
  {
    id: 1,
    nameVN: "Người Nguyên Thủy",
    level: 1,
    tier: "EVOLUTION_1_40",
    rarity: "common",
    baseDamage: 100,
    totalDamage: 100,
    sprite: "sprites/caveman.png"
  },
  {
    id: 15,
    nameVN: "Thần Sấm",
    level: 15,
    tier: "EVOLUTION_1_40",
    rarity: "epic",
    baseDamage: 3200,
    totalDamage: 32500,
    sprite: "sprites/thor.png"
  },
  {
    id: 45,
    nameVN: "Mega Tiến Hóa I",
    level: 45,
    tier: "EVOLUTION_41_50",
    rarity: "mythic",
    baseDamage: 150000,
    totalDamage: 1360000,
    sprite: "sprites/mega_1.png"
  },
  {
    id: 50,
    nameVN: "Thần Diệt Vũ Trụ",
    level: 50,
    tier: "EVOLUTION_41_50",
    rarity: "mythic",
    baseDamage: 500000,
    totalDamage: 9999999,
    sprite: "sprites/mega_final.png"
  }
];
export function calculateTotalDamage(
  baseDamage: number,
  level: number
): number {
  const scale =
    level <= 40
      ? 1 + level * 0.15       // cấp 1–40
      : 1 + 40 * 0.15 + (level - 40) * 0.35; // cấp 41–50

  return Math.floor(baseDamage * scale);
}
type Props = {
  evo: Evolution;
};

export const EvolutionCard: React.FC<Props> = ({ evo }) => {
  return (
    <div className={`card ${evo.rarity}`}>
      <img src={evo.sprite} alt={evo.nameVN} />
      <h3>{evo.nameVN}</h3>
      <p>Cấp {evo.level}</p>

      <div className="damage-box">
        ⚔️ TỔNG SÁT THƯƠNG
        <strong>{evo.totalDamage.toLocaleString()}</strong>
      </div>
    </div>
  );
};
export type FrameType = "HORIZONTAL" | "VERTICAL";
export type Rarity = "common" | "rare" | "epic" | "legendary" | "mythic";

export interface Evolution {
  id: number;
  level: number;
  nameVN: string;
  rarity: Rarity;
  frame: FrameType;      // KHUNG NGANG / DỌC
  baseDamage: number;
  totalDamage: number;
  sprite: string;
}
export function calculateTotalDamage(
  baseDamage: number,
  level: number
): number {
  let multiplier = 1;

  if (level <= 37) {
    multiplier += level * 0.18;
  } else {
    multiplier += 37 * 0.18 + (level - 37) * 0.45;
  }

  return Math.floor(baseDamage * multiplier);
}
export const EVOLUTIONS: Evolution[] = [
  { id: 1, level: 1, nameVN: "Người Nguyên Thủy", rarity: "common", baseDamage: 80, totalDamage: calculateTotalDamage(80,1), sprite: "caveman.png" },
  { id: 2, level: 2, nameVN: "Chiến Binh Viking", rarity: "common", baseDamage: 120, totalDamage: calculateTotalDamage(120,2), sprite: "viking.png" },
  { id: 3, level: 3, nameVN: "Chiến Binh", rarity: "common", baseDamage: 160, totalDamage: calculateTotalDamage(160,3), sprite: "warrior.png" },
  { id: 4, level: 4, nameVN: "Hiệp Sĩ", rarity: "rare", baseDamage: 220, totalDamage: calculateTotalDamage(220,4), sprite: "knight.png" },
  { id: 5, level: 5, nameVN: "Lính Ngự Lâm", rarity: "rare", baseDamage: 300, totalDamage: calculateTotalDamage(300,5), sprite: "musketeer.png" },
  { id: 6, level: 6, nameVN: "Ninja", rarity: "rare", baseDamage: 420, totalDamage: calculateTotalDamage(420,6), sprite: "ninja.png" },
  { id: 7, level: 7, nameVN: "Hải Tặc", rarity: "rare", baseDamage: 580, totalDamage: calculateTotalDamage(580,7), sprite: "pirate.png" },
  { id: 8, level: 8, nameVN: "Chiến Binh Spartan", rarity: "epic", baseDamage: 800, totalDamage: calculateTotalDamage(800,8), sprite: "spartan.png" },
  { id: 9, level: 9, nameVN: "Samurai", rarity: "epic", baseDamage: 1100, totalDamage: calculateTotalDamage(1100,9), sprite: "samurai.png" },
  { id: 10, level: 10, nameVN: "Lính Đặc Nhiệm", rarity: "epic", baseDamage: 1500, totalDamage: calculateTotalDamage(1500,10), sprite: "soldier.png" },

  { id: 11, level: 11, nameVN: "Du Côn", rarity: "epic", baseDamage: 1900, totalDamage: calculateTotalDamage(1900,11), sprite: "hooligan.png" },
  { id: 12, level: 12, nameVN: "Người Máy", rarity: "epic", baseDamage: 2400, totalDamage: calculateTotalDamage(2400,12), sprite: "cyborg.png" },
  { id: 13, level: 13, nameVN: "Quái Vật Đỏ", rarity: "legendary", baseDamage: 3000, totalDamage: calculateTotalDamage(3000,13), sprite: "red_monster.png" },
  { id: 14, level: 14, nameVN: "Người Ngoài Hành Tinh", rarity: "legendary", baseDamage: 3800, totalDamage: calculateTotalDamage(3800,14), sprite: "alien.png" },
  { id: 15, level: 15, nameVN: "Thần Sấm", rarity: "legendary", baseDamage: 4800, totalDamage: calculateTotalDamage(4800,15), sprite: "thor.png" },

  { id: 16, level: 16, nameVN: "Pháp Sư Tối Cao", rarity: "legendary", baseDamage: 6200, totalDamage: calculateTotalDamage(6200,16), sprite: "archmage.png" },
  { id: 17, level: 17, nameVN: "Ác Quỷ", rarity: "legendary", baseDamage: 8000, totalDamage: calculateTotalDamage(8000,17), sprite: "demon.png" },
  { id: 18, level: 18, nameVN: "Tổng Lãnh Thiên Thần", rarity: "legendary", baseDamage: 10000, totalDamage: calculateTotalDamage(10000,18), sprite: "archangel.png" },
  { id: 19, level: 19, nameVN: "Medusa", rarity: "legendary", baseDamage: 12500, totalDamage: calculateTotalDamage(12500,19), sprite: "medusa.png" },
  { id: 20, level: 20, nameVN: "Chiến Binh Apache", rarity: "legendary", baseDamage: 15500, totalDamage: calculateTotalDamage(15500,20), sprite: "apache.png" },

  { id: 21, level: 21, nameVN: "Đồ Tể", rarity: "legendary", baseDamage: 19000, totalDamage: calculateTotalDamage(19000,21), sprite: "butcher.png" },
  { id: 22, level: 22, nameVN: "Người khổng lồ một mắt", rarity: "legendary", baseDamage: 23000, totalDamage: calculateTotalDamage(23000,22), sprite: "cyclop.png" },
  { id: 23, level: 23, nameVN: "Nhân Ngưu", rarity: "legendary", baseDamage: 28000, totalDamage: calculateTotalDamage(28000,23), sprite: "minotaur.png" },
  { id: 24, level: 24, nameVN: "Kỵ Sĩ Bóng Tối", rarity: "legendary", baseDamage: 34000, totalDamage: calculateTotalDamage(34000,24), sprite: "dark_knight.png" },
  { id: 25, level: 25, nameVN: "Lãnh Chúa Chiến Tranh", rarity: "legendary", baseDamage: 41000, totalDamage: calculateTotalDamage(41000,25), sprite: "warlord.png" },

  { id: 26, level: 26, nameVN: "Diệt Rồng", rarity: "mythic", baseDamage: 49000, totalDamage: calculateTotalDamage(49000,26), sprite: "dragon_slayer.png" },
  { id: 27, level: 27, nameVN: "Đao Phủ", rarity: "mythic", baseDamage: 58000, totalDamage: calculateTotalDamage(58000,27), sprite: "executioner.png" },
  { id: 28, level: 28, nameVN: "Morbash", rarity: "mythic", baseDamage: 68000, totalDamage: calculateTotalDamage(68000,28), sprite: "morbash.png" },
  { id: 29, level: 29, nameVN: "Chiến Binh Tiên", rarity: "mythic", baseDamage: 79000, totalDamage: calculateTotalDamage(79000,29), sprite: "elven_warrior.png" },
  { id: 30, level: 30, nameVN: "Tử Thần", rarity: "mythic", baseDamage: 92000, totalDamage: calculateTotalDamage(92000,30), sprite: "reaper.png" },

  { id: 31, level: 31, nameVN: "Siêu trí tuệ", rarity: "mythic", baseDamage: 107000, totalDamage: calculateTotalDamage(107000,31), sprite: "overmind.png" },
  { id: 32, level: 32, nameVN: "Hexatron", rarity: "mythic", baseDamage: 125000, totalDamage: calculateTotalDamage(125000,32), sprite: "hexatron.png" },
  { id: 33, level: 33, nameVN: "Chiến Tướng Tối Thượng", rarity: "mythic", baseDamage: 145000, totalDamage: calculateTotalDamage(145000,33), sprite: "warmaster.png" },
  { id: 34, level: 34, nameVN: "Vua Bầy Đàn", rarity: "mythic", baseDamage: 168000, totalDamage: calculateTotalDamage(168000,34), sprite: "hive_king.png" },
  { id: 35, level: 35, nameVN: "Thợ Săn Không Gian", rarity: "mythic", baseDamage: 195000, totalDamage: calculateTotalDamage(195000,35), sprite: "space_hunter.png" },

  { id: 36, level: 36, nameVN: "Kẻ Hủy Diệt", rarity: "mythic", baseDamage: 225000, totalDamage: calculateTotalDamage(225000,36), sprite: "annihilator.png" },
  { id: 37, level: 37, nameVN: "Mega Tiến Hóa I", rarity: "mythic", baseDamage: 260000, totalDamage: calculateTotalDamage(260000,37), sprite: "mega_1.png" },

  { id: 38, level: 38, nameVN: "Mega Tiến Hóa II", rarity: "mythic", baseDamage: 300000, totalDamage: calculateTotalDamage(300000,38), sprite: "mega_2.png" },
  { id: 39, level: 39, nameVN: "Mega Tiến Hóa III", rarity: "mythic", baseDamage: 345000, totalDamage: calculateTotalDamage(345000,39), sprite: "mega_3.png" },
  { id: 40, level: 40, nameVN: "Mega Tiến Hóa IV", rarity: "mythic", baseDamage: 395000, totalDamage: calculateTotalDamage(395000,40), sprite: "mega_4.png" },
  { id: 41, level: 41, nameVN: "Mega Tiến Hóa V", rarity: "mythic", baseDamage: 450000, totalDamage: calculateTotalDamage(450000,41), sprite: "mega_5.png" },
  { id: 42, level: 42, nameVN: "Thực Thể Hỗn Mang", rarity: "mythic", baseDamage: 510000, totalDamage: calculateTotalDamage(510000,42), sprite: "chaos_entity.png" },

  { id: 43, level: 43, nameVN: "Chúa Tể Bóng Tối", rarity: "mythic", baseDamage: 580000, totalDamage: calculateTotalDamage(580000,43), sprite: "dark_lord.png" },
  { id: 44, level: 44, nameVN: "Thần Chiến Tranh", rarity: "mythic", baseDamage: 660000, totalDamage: calculateTotalDamage(660000,44), sprite: "war_god.png" },
  { id: 45, level: 45, nameVN: "Chúa Tể Địa Ngục", rarity: "mythic", baseDamage: 750000, totalDamage: calculateTotalDamage(750000,45), sprite: "hell_king.png" },
  { id: 46, level: 46, nameVN: "Thần Hủy Diệt", rarity: "mythic", baseDamage: 850000, totalDamage: calculateTotalDamage(850000,46), sprite: "destroyer_god.png" },
  { id: 47, level: 47, nameVN: "Thần Không Gian", rarity: "mythic", baseDamage: 960000, totalDamage: calculateTotalDamage(960000,47), sprite: "space_god.png" },

  { id: 48, level: 48, nameVN: "Thần Thời Gian", rarity: "mythic", baseDamage: 1080000, totalDamage: calculateTotalDamage(1080000,48), sprite: "time_god.png" },
  { id: 49, level: 49, nameVN: "Thần Vũ Trụ", rarity: "mythic", baseDamage: 1220000, totalDamage: calculateTotalDamage(1220000,49), sprite: "universe_god.png" },
  { id: 50, level: 50, nameVN: "Thần Diệt Vũ Trụ", rarity: "mythic", baseDamage: 1400000, totalDamage: calculateTotalDamage(1400000,50), sprite: "final_god.png" }
];
export type Rarity = "common" | "rare" | "epic" | "legendary" | "mythic";

export interface Evolution {
  id: number;
  displayLevel: number;   // Số hiển thị trên khung
  realLevelFrom: number; // cấp thật bắt đầu
  realLevelTo: number;   // cấp thật kết thúc
  nameVN: string;
  rarity: Rarity;
  baseDamage: number;
  totalDamage: number;
  sprite: string;
}
export function calculateTotalDamageRange(
  baseDamage: number,
  fromLevel: number,
  toLevel: number
): number {
  let total = 0;

  for (let lv = fromLevel; lv <= toLevel; lv++) {
    const multiplier =
      lv <= 36
        ? 1 + lv * 0.18
        : 1 + 36 * 0.18 + (lv - 36) * 0.25;

    total += Math.floor(baseDamage * multiplier);
  }

  return total;
}
export const EVOLUTIONS: Evolution[] = [
  // ===== CẤP 1 → 36 (mỗi cấp 1 khung) =====
  {
    id: 1,
    displayLevel: 1,
    realLevelFrom: 1,
    realLevelTo: 1,
    nameVN: "Người Nguyên Thủy",
    rarity: "common",
    baseDamage: 80,
    totalDamage: calculateTotalDamageRange(80, 1, 1),
    sprite: "caveman.png"
  },
  {
    id: 2,
    displayLevel: 2,
    realLevelFrom: 2,
    realLevelTo: 2,
    nameVN: "Chiến Binh Viking",
    rarity: "common",
    baseDamage: 120,
    totalDamage: calculateTotalDamageRange(120, 2, 2),
    sprite: "viking.png"
  },

  // ... (tiếp tục giống vậy cho tới cấp 36)

  {
    id: 36,
    displayLevel: 36,
    realLevelFrom: 36,
    realLevelTo: 36,
    nameVN: "Chiến Thần Bóng Tối",
    rarity: "mythic",
    baseDamage: 225000,
    totalDamage: calculateTotalDamageRange(225000, 36, 36),
    sprite: "dark_war_god.png"
  },

  // ===== KHUNG ĐẶC BIỆT: GỘP CẤP 37 → 50 =====
  {
    id: 37,
    displayLevel: 1,              // 👈 HIỂN THỊ CẤP 1
    realLevelFrom: 37,
    realLevelTo: 50,
    nameVN: "Mega Tiến Hóa Tối Thượng",
    rarity: "mythic",
    baseDamage: 300000,
    totalDamage: calculateTotalDamageRange(300000, 37, 50),
    sprite: "mega_final_horizontal.png"
  }
];
// Hiển thị cấp trong khung
levelText = evolution.displayLevel;

// Tooltip / info chi tiết
"Cấp thật: " + evolution.realLevelFrom + " → " + evolution.realLevelTo;
const MAX_WEAPON_LEVEL = 50;
const MAX_EVOLUTION_LEVEL = 50;
interface Weapon {
  id: number;
  name: string;
  level: number;
  baseDamage: number;
}

interface Evolution {
  id: number;
  name: string;
  level: number;
  baseDamage: number;
}
class Player {
  weapon: Weapon | null = null;
  evolution: Evolution | null = null;

  // Chọn vũ khí
  selectWeapon(weapon: Weapon) {
    this.weapon = weapon;
  }

  // Chọn tiến hóa
  selectEvolution(evolution: Evolution) {
    this.evolution = evolution;
  }

  // Nâng cấp vũ khí
  upgradeWeapon(): boolean {
    if (!this.weapon) return false;

    if (this.weapon.level < MAX_WEAPON_LEVEL) {
      this.weapon.level++;
      return true;
    }
    return false; // đã max cấp
  }

  // Nâng cấp tiến hóa
  upgradeEvolution(): boolean {
    if (!this.evolution) return false;

    if (this.evolution.level < MAX_EVOLUTION_LEVEL) {
      this.evolution.level++;
      return true;
    }
    return false;
  }

  // Tính tổng sát thương
  getTotalDamage(): number {
    const weaponDamage =
      this.weapon ? this.weapon.baseDamage * this.weapon.level : 0;

    const evolutionDamage =
      this.evolution ? this.evolution.baseDamage * this.evolution.level : 0;

    return weaponDamage + evolutionDamage;
  }
}
const club: Weapon = {
  id: 1,
  name: "Spiked Club",
  level: 1,
  baseDamage: 1
};

const caveman: Evolution = {
  id: 1,
  name: "Caveman",
  level: 1,
  baseDamage: 2
};
const player = new Player();

// Chọn tiến hóa & vũ khí
player.selectWeapon(club);
player.selectEvolution(caveman);

// Nâng cấp full
while (player.upgradeWeapon()) {}
while (player.upgradeEvolution()) {}

console.log("Weapon Level:", player.weapon?.level); // 50
console.log("Evolution Level:", player.evolution?.level); // 50
console.log("Total Damage:", player.getTotalDamage());
const WEAPON_FRAGMENT_REQUIRE = 10;
const EVOLUTION_FRAGMENT_REQUIRE = 20;
interface FragmentData {
  current: number;
  required: number;
}
interface Weapon {
  id: number;
  name: string;
  level: number;
  baseDamage: number;
  fragments: FragmentData;
}

interface Evolution {
  id: number;
  name: string;
  level: number;
  baseDamage: number;
  fragments: FragmentData;
}
class Player {
  weapon!: Weapon;
  evolution!: Evolution;

  // Thu thập thẻ vũ khí
  collectWeaponCard(amount: number = 1) {
    this.weapon.fragments.current += amount;

    if (this.weapon.fragments.current >= this.weapon.fragments.required) {
      this.weapon.fragments.current = 0;
      this.upgradeWeapon();
    }
  }

  // Thu thập thẻ tiến hóa
  collectEvolutionCard(amount: number = 1) {
    this.evolution.fragments.current += amount;

    if (this.evolution.fragments.current >= this.evolution.fragments.required) {
      this.evolution.fragments.current = 0;
      this.upgradeEvolution();
    }
  }

  upgradeWeapon() {
    if (this.weapon.level < 50) {
      this.weapon.level++;
    }
  }

  upgradeEvolution() {
    if (this.evolution.level < 50) {
      this.evolution.level++;
    }
  }

  getWeaponDamage(): number {
    return this.weapon.level * this.weapon.baseDamage;
  }

  getEvolutionDamage(): number {
    return this.evolution.level * this.evolution.baseDamage;
  }
}
function renderEvolutionDamageUI(player: Player) {
  const evolutionDamageText = document.getElementById("evolution-damage");

  if (!evolutionDamageText) return;

  evolutionDamageText.innerText =
    `Evolution DMG: ${player.getEvolutionDamage()}`;
}
function renderWeaponFragmentUI(player: Player) {
  const bar = document.getElementById("weapon-fragment");

  if (!bar) return;

  bar.innerText =
    `${player.weapon.fragments.current}/${player.weapon.fragments.required}`;
}
function renderEvolutionFragmentUI(player: Player) {
  const bar = document.getElementById("evolution-fragment");

  if (!bar) return;

  bar.innerText =
    `${player.evolution.fragments.current}/${player.evolution.fragments.required}`;
}
const player = new Player();

player.weapon = {
  id: 1,
  name: "Spiked Club",
  level: 1,
  baseDamage: 1,
  fragments: {
    current: 1,
    required: 10
  }
};

player.evolution = {
  id: 1,
  name: "Caveman",
  level: 1,
  baseDamage: 2,
  fragments: {
    current: 1,
    required: 20
  }
};
// Nhặt thẻ vũ khí
player.collectWeaponCard();

// Nhặt thẻ tiến hóa
player.collectEvolutionCard();

// Cập nhật UI
renderWeaponFragmentUI(player);
renderEvolutionFragmentUI(player);
renderEvolutionDamageUI(player);
enum UnlockState {
  LOCKED = "locked",
  UNLOCKED = "unlocked"
}

function canEquipWeapon(weapon: Weapon): boolean {
  return weapon.state === UnlockState.UNLOCKED;
}

function canSelectCharacter(character: Character): boolean {
  return character.state === UnlockState.UNLOCKED;
}
function collectWeaponFragment(player: Player, weaponId: number) {
  const weapon = player.weapons.find(w => w.id === weaponId);
  if (!weapon || weapon.state === UnlockState.LOCKED) return;

  weapon.fragments.current++;

  if (weapon.fragments.current >= weapon.fragments.required) {
    weapon.fragments.current = 0;
    weapon.level = Math.min(weapon.level + 1, 50);
  }
}
function getWeaponUIState(weapon: Weapon): string {
  return weapon.state === UnlockState.LOCKED
    ? "LOCKED - Reach level " + weapon.unlockAtPlayerLevel
    : "UNLOCKED";
}
interface FragmentData {
  current: number;
  required: number;
}

interface Weapon {
  id: number;
  name: string;
  level: number;
  baseDamage: number;
  state: UnlockState;
  fragments: FragmentData;
}

interface Character {
  id: number;
  name: string;
  level: number;
  baseDamage: number;
  state: UnlockState;
  fragments: FragmentData;
}
type CardType = "weapon" | "character";

interface CardReward {
  type: CardType;
  targetId: number;
  amount: number;
}
class Player {
  weapons: Weapon[] = [];
  characters: Character[] = [];

  openChest(rewards: CardReward[]) {
    rewards.forEach(card => {
      if (card.type === "weapon") {
        this.applyWeaponCard(card);
      } else {
        this.applyCharacterCard(card);
      }
    });
  }

  private applyWeaponCard(card: CardReward) {
    const weapon = this.weapons.find(w => w.id === card.targetId);
    if (!weapon) return;

    // MỞ KHÓA LẦN ĐẦU
    if (weapon.state === UnlockState.LOCKED) {
      weapon.state = UnlockState.UNLOCKED;
      weapon.fragments.current = card.amount;
      return;
    }

    // ĐÃ MỞ → TĂNG MẢNH
    weapon.fragments.current += card.amount;

    if (weapon.fragments.current >= weapon.fragments.required) {
      weapon.fragments.current = 0;
      weapon.level = Math.min(weapon.level + 1, 50);
    }
  }

  private applyCharacterCard(card: CardReward) {
    const char = this.characters.find(c => c.id === card.targetId);
    if (!char) return;

    if (char.state === UnlockState.LOCKED) {
      char.state = UnlockState.UNLOCKED;
      char.fragments.current = card.amount;
      return;
    }

    char.fragments.current += card.amount;

    if (char.fragments.current >= char.fragments.required) {
      char.fragments.current = 0;
      char.level = Math.min(char.level + 1, 50);
    }
  }
}
const player = new Player();

player.weapons = [
  {
    id: 1,
    name: "Spiked Club",
    level: 1,
    baseDamage: 1,
    state: UnlockState.LOCKED,
    fragments: { current: 0, required: 10 }
  },
  {
    id: 2,
    name: "Stone Spear",
    level: 1,
    baseDamage: 3,
    state: UnlockState.LOCKED,
    fragments: { current: 0, required: 15 }
  }
];

player.characters = [
  {
    id: 1,
    name: "Caveman",
    level: 1,
    baseDamage: 2,
    state: UnlockState.LOCKED,
    fragments: { current: 0, required: 20 }
  },
  {
    id: 2,
    name: "Hunter",
    level: 1,
    baseDamage: 4,
    state: UnlockState.LOCKED,
    fragments: { current: 0, required: 25 }
  }
];
// Rương rơi thẻ
const chestRewards: CardReward[] = [
  { type: "weapon", targetId: 1, amount: 1 },
  { type: "character", targetId: 1, amount: 2 }
];

// Mở rương
player.openChest(chestRewards);

console.log(player.weapons[0].state); // unlocked
console.log(player.characters[0].state); // unlocked
class DamageSystem {
  level: number;
  weaponLevel: number;

  constructor(level: number, weaponLevel: number) {
    this.level = level;
    this.weaponLevel = weaponLevel;
  }

  getEvolutionDamage(): number {
    return 4 + (this.level - 1) * 2;
  }

  getWeaponDamage(): number {
    return this.weaponLevel * 3;
  }

  getTotalDamage(): number {
    return this.getEvolutionDamage() + this.getWeaponDamage();
  }
}
const damage = new DamageSystem(10, 9);

console.log("Sát thương tiến hóa:", damage.getEvolutionDamage());
console.log("Tổng sát thương:", damage.getTotalDamage());
// Độ hiếm
export enum Rarity {
  COMMON = "common",
  RARE = "rare",
  EPIC = "epic",
  LEGENDARY = "legendary",
}

// Tiền tệ
export enum Currency {
  GOLD = "gold",
  DIAMOND = "diamond",
}

// Giá nâng cấp
export interface UpgradeCost {
  amount: number;
  currency: Currency;
}
export const DAMAGE_BY_RARITY: Record<Rarity, number> = {
  [Rarity.COMMON]: 1,
  [Rarity.RARE]: 2,
  [Rarity.EPIC]: 3,
  [Rarity.LEGENDARY]: 4,
};
export const WEAPON_LEVEL_1_COST: Record<Rarity, UpgradeCost> = {
  [Rarity.COMMON]: { amount: 100_000, currency: Currency.GOLD },
  [Rarity.RARE]: { amount: 150, currency: Currency.DIAMOND },
  [Rarity.EPIC]: { amount: 200, currency: Currency.DIAMOND },
  [Rarity.LEGENDARY]: { amount: 250_000, currency: Currency.GOLD },
};
export class WeaponUpgrade {
  level: number = 0;
  readonly maxLevel = 10;
  readonly rarity: Rarity;

  constructor(rarity: Rarity) {
    this.rarity = rarity;
  }

  getDamage(): number {
    return this.level * DAMAGE_BY_RARITY[this.rarity];
  }

  getUpgradeCost(): UpgradeCost | null {
    if (this.level >= this.maxLevel) return null;

    if (this.level === 0) return WEAPON_LEVEL_1_COST[this.rarity];
    if (this.level === 1) return WEAPON_LEVEL_2_COST[this.rarity];

    // cấp 3 trở đi: tăng theo cấp trước
    return {
      amount: this.level * 100_000,
      currency: Currency.GOLD,
    };
  }

  upgrade(): void {
    if (this.level < this.maxLevel) {
      this.level++;
    }
  }
}
function evolutionGoldCostByLevel(level: number, base: number): number {
  if (level <= 19) return base;
  if (level === 20) return base * 1;
  if (level <= 24) return base * 1.5;
  if (level <= 28) return base * 2;
  return base * 2.5;
}
export class EvolutionUpgrade {
  level: number = 0;
  readonly maxLevel = 5;
  readonly rarity: Rarity;

  constructor(rarity: Rarity) {
    this.rarity = rarity;
  }

  getDamage(): number {
    return this.level * DAMAGE_BY_RARITY[this.rarity];
  }

  getUpgradeCost(characterLevel: number): UpgradeCost | null {
    if (this.level >= this.maxLevel) return null;

    // Lần 1 & 2 dùng kim cương
    if (this.level === 0)
      return { amount: 100, currency: Currency.DIAMOND };

    if (this.level === 1)
      return { amount: 200, currency: Currency.DIAMOND };

    // Từ lần 3 trở đi dùng vàng
    const baseGold = this.level === 2 ? 100_000 : 200_000;

    return {
      amount: evolutionGoldCostByLevel(characterLevel, baseGold),
      currency: Currency.GOLD,
    };
  }

  upgrade(): void {
    if (this.level < this.maxLevel) {
      this.level++;
    }
  }
}
export class Character {
  level: number;
  weapon: WeaponUpgrade;
  evolution: EvolutionUpgrade;

  constructor(level: number, rarity: Rarity) {
    this.level = level;
    this.weapon = new WeaponUpgrade(rarity);
    this.evolution = new EvolutionUpgrade(rarity);
  }

  getTotalDamage(): number {
    return this.weapon.getDamage() + this.evolution.getDamage();
  }
}
type Currency = "gold" | "diamond";

interface UpgradeConfig {
  basePrice: number;
  previousUpgradeCount: number; // số lần đã nâng cấp trước đó
  currency: Currency;
}

const MAX_PREVIOUS_DISCOUNT = 50;
const DISCOUNT_NEW = 0.75;      // 75%
const DISCOUNT_PREVIOUS = 0.99; // 99%

function calculateUpgradePrice(config: UpgradeConfig): number {
  const { basePrice, previousUpgradeCount } = config;

  let finalPrice = basePrice;

  if (previousUpgradeCount > 0) {
    const applicableTimes = Math.min(
      previousUpgradeCount,
      MAX_PREVIOUS_DISCOUNT
    );

    finalPrice =
      basePrice * Math.pow(1 - DISCOUNT_PREVIOUS, applicableTimes);
  } else {
    finalPrice = basePrice * (1 - DISCOUNT_NEW);
  }

  // Không cho giá về 0
  return Math.max(1, Math.floor(finalPrice));
}
const goldUpgrade = calculateUpgradePrice({
  basePrice: 10000,
  previousUpgradeCount: 0,
  currency: "gold",
});

const diamondUpgrade = calculateUpgradePrice({
  basePrice: 500,
  previousUpgradeCount: 20,
  currency: "diamond",
});

console.log("Gold price:", goldUpgrade);
console.log("Diamond price:", diamondUpgrade);
type Rarity = "common" | "rare" | "epic" | "legendary";
type Currency = "gold" | "diamond";

interface Taunt {
  id: string;
  name: string;
  icon: string; // emoji hoặc sprite key
  rarity: Rarity;
  unlocked: boolean;
  level: number;
  maxLevel: number;
}
export type TauntRarity = "common" | "rare" | "epic" | "legendary";

export interface Taunt {
  id: string;
  name: string;
  icon: string;
  rarity: TauntRarity;
  level: number;
  scale: number;
}
export interface TauntCard {
  tauntId: string;
  amount: number; // số thẻ nhận được
}
export const TAUNT_DATABASE: Record<string, Omit<Taunt, "level" | "scale">> = {
  laugh: {
    id: "laugh",
    name: "Laugh",
    icon: "😂",
    rarity: "common"
  },
  rip: {
    id: "rip",
    name: "RIP",
    icon: "☠️",
    rarity: "rare"
  },
  gg: {
    id: "gg",
    name: "GG",
    icon: "😎",
    rarity: "epic"
  }
};
export interface Chest {
  id: string;
  name: string;
  dropTable: ChestDrop[];
}

export interface ChestDrop {
  tauntId: string;
  chance: number; // %
  cardAmount: number;
}
export function openChest(chest: Chest): TauntCard {
  const roll = Math.random() * 100;
  let current = 0;

  for (const drop of chest.dropTable) {
    current += drop.chance;
    if (roll <= current) {
      return {
        tauntId: drop.tauntId,
        amount: drop.cardAmount
      };
    }
  }

  // fallback
  return {
    tauntId: chest.dropTable[0].tauntId,
    amount: 1
  };
}
export interface PlayerInventory {
  taunts: Record<string, Taunt>;
  tauntCards: Record<string, number>;
}
export const playerInventory: PlayerInventory = {
  taunts: {},
  tauntCards: {}
};
export function addTauntCard(card: TauntCard) {
  const current = playerInventory.tauntCards[card.tauntId] || 0;
  playerInventory.tauntCards[card.tauntId] = current + card.amount;

  // nếu chưa có taunt → mở Level I
  if (!playerInventory.taunts[card.tauntId]) {
    unlockTaunt(card.tauntId);
  }
}
function unlockTaunt(tauntId: string) {
  const base = TAUNT_DATABASE[tauntId];

  playerInventory.taunts[tauntId] = {
    ...base,
    level: 1,          // ⭐ CẤP ĐỘ I
    scale: 1
  };

  console.log(`Unlocked Taunt: ${base.name} (Level I)`);
}
export function upgradeTaunt(tauntId: string) {
  const taunt = playerInventory.taunts[tauntId];
  if (!taunt) return;

  const requiredCards = taunt.level * 2;
  const cards = playerInventory.tauntCards[tauntId] || 0;

  if (cards < requiredCards) return;

  playerInventory.tauntCards[tauntId] -= requiredCards;
  taunt.level++;
  taunt.scale *= 1.5;

  console.log(`Taunt ${taunt.name} upgraded to Level ${taunt.level}`);
}
const card = openChest(TAUNT_CHEST);
addTauntCard(card);
export type TombRarity = "common" | "rare" | "epic" | "legendary";

export interface Tomb {
  id: string;
  name: string;
  icon: string;
  rarity: TombRarity;

  level: number;

  triggerChance: number; // % kích hoạt khi kill
  treasureMultiplier: number;
}
export const TOMB_DATABASE: Record<string, Omit<Tomb, "level">> = {
  stone_tomb: {
    id: "stone_tomb",
    name: "Stone Tomb",
    icon: "🪦",
    rarity: "common",
    triggerChance: 1,
    treasureMultiplier: 1
  },

  golden_tomb: {
    id: "golden_tomb",
    name: "Golden Tomb",
    icon: "⚱️",
    rarity: "rare",
    triggerChance: 2,
    treasureMultiplier: 3
  },

  ancient_tomb: {
    id: "ancient_tomb",
    name: "Ancient Tomb",
    icon: "🏺",
    rarity: "legendary",
    triggerChance: 3,      // giống hình
    treasureMultiplier: 10 // 10x treasure
  }
};
export interface TombCard {
  tombId: string;
  amount: number;
}
export interface PlayerInventory {
  tombs: Record<string, Tomb>;
  tombCards: Record<string, number>;
  gold: number;
}

export const playerInventory: PlayerInventory = {
  tombs: {},
  tombCards: {},
  gold: 0
};
export function unlockTomb(tombId: string) {
  if (playerInventory.tombs[tombId]) return;

  const base = TOMB_DATABASE[tombId];

  playerInventory.tombs[tombId] = {
    ...base,
    level: 1 // ⭐ Level I
  };

  console.log(`Unlocked Tomb: ${base.name} (Level I)`);
}
export function addTombCard(card: TombCard) {
  playerInventory.tombCards[card.tombId] =
    (playerInventory.tombCards[card.tombId] || 0) + card.amount;

  // nếu chưa có tomb → mở ngay
  if (!playerInventory.tombs[card.tombId]) {
    unlockTomb(card.tombId);
  }
}
export function upgradeTomb(tombId: string) {
  const tomb = playerInventory.tombs[tombId];
  if (!tomb) return;

  const requiredCards = tomb.level * 2;
  const cards = playerInventory.tombCards[tombId] || 0;

  if (cards < requiredCards) return;

  playerInventory.tombCards[tombId] -= requiredCards;

  tomb.level++;
  tomb.treasureMultiplier *= 2;
  tomb.triggerChance += 0.5;

  console.log(`Tomb ${tomb.name} upgraded to Level ${tomb.level}`);
}
export function onEnemyKilled() {
  Object.values(playerInventory.tombs).forEach(tomb => {
    const roll = Math.random() * 100;

    if (roll <= tomb.triggerChance) {
      const treasure = 10 * tomb.treasureMultiplier;
      playerInventory.gold += treasure;

      console.log(
        `Tomb activated: ${tomb.name} → +${treasure} gold`
      );
    }
  });
}
// Kill enemy
onEnemyKilled();

// Nhận thẻ Tomb từ rương / sự kiện
addTombCard({ tombId: "ancient_tomb", amount: 1 });

// Upgrade
upgradeTomb("ancient_tomb");
type Rarity = "common" | "rare" | "epic" | "legendary";

interface CriticalHitItem {
  name: string;
  rarity: Rarity;
  critChance: number;      // % chí mạng
  critMultiplier: number;  // sát thương nhân
  goldOnKillChance?: number; // % rơi vàng khi giết
}
const criticalHitEpic: CriticalHitItem = {
  name: "Critical Hit",
  rarity: "epic",
  critChance: 0.15,        // 15% crit chance
  critMultiplier: 2.0,     // x2 damage
  goldOnKillChance: 0.25   // 25% chance rain of gold
};
function calculateDamage(
  baseDamage: number,
  item: CriticalHitItem
): { damage: number; isCritical: boolean } {

  const roll = Math.random();
  const isCritical = roll < item.critChance;

  const damage = isCritical
    ? baseDamage * item.critMultiplier
    : baseDamage;

  return { damage, isCritical };
}
function onEnemyKilled(item: CriticalHitItem): boolean {
  if (!item.goldOnKillChance) return false;
  return Math.random() < item.goldOnKillChance;
}
const baseDamage = 100;

const result = calculateDamage(baseDamage, criticalHitEpic);

console.log(
  result.isCritical
    ? `💥 CRITICAL HIT! Damage: ${result.damage}`
    : `Normal hit. Damage: ${result.damage}`
);

const goldDrop = onEnemyKilled(criticalHitEpic);
if (goldDrop) {
  console.log("💰 Rain of gold!");
}
function upgradeCriticalHit(
  item: CriticalHitItem,
  extraCritChance: number
): CriticalHitItem {
  return {
    ...item,
    critChance: item.critChance + extraCritChance
  };
}

// Upgrade +5%
const upgradedItem = upgradeCriticalHit(criticalHitEpic, 0.05);
type Rarity = "common" | "rare" | "epic" | "legendary";

interface Mount {
  id: string;
  name: string;
  rarity: Rarity;
  speedBonus: number;      // % tăng tốc độ
  xpCostModifier: number;  // hệ số XP (ví dụ -50% = 0.5)
  isUnlocked: boolean;
}
const basicMount: Mount = {
  id: "mount_01",
  name: "Basic Mount",
  rarity: "common",
  speedBonus: 0.25,      // +25% speed
  xpCostModifier: 0.5,   // -50% XP cost
  isUnlocked: true
};
interface PlayerStats {
  baseSpeed: number;
  currentSpeed: number;
  xpCost: number;
}

function activateMount(player: PlayerStats, mount: Mount): PlayerStats {
  if (!mount.isUnlocked) return player;

  return {
    ...player,
    currentSpeed: player.baseSpeed * (1 + mount.speedBonus),
    xpCost: player.xpCost * mount.xpCostModifier
  };
}
function deactivateMount(player: PlayerStats): PlayerStats {
  return {
    ...player,
    currentSpeed: player.baseSpeed,
    xpCost: player.xpCost
  };
}
function upgradeMount(
  mount: Mount,
  extraSpeed: number,
  extraXpReduction: number
): Mount {
  return {
    ...mount,
    speedBonus: mount.speedBonus + extraSpeed,
    xpCostModifier: Math.max(
      0.1,
      mount.xpCostModifier - extraXpReduction
    )
  };
}
let player: PlayerStats = {
  baseSpeed: 5,
  currentSpeed: 5,
  xpCost: 100
};

// Nhấn Shift
player = activateMount(player, basicMount);
console.log("Mounted speed:", player.currentSpeed);

// Upgrade mount
const upgradedMount = upgradeMount(basicMount, 0.1, 0.1);

// Tắt mount
player = deactivateMount(player);
console.log("Normal speed:", player.currentSpeed);
// locales/vi.ts

export const vi = {
  boostVip: {
    title: "BOOST & TÀI KHOẢN VIP",

    boost: {
      title: "BOOST",
      perks: [
        "+30% EXP khi tiêu diệt kẻ địch",
        "+100% EXP khi thu thập orb",
        "+100% điểm xếp hạng cho mỗi vòng",
        "+10% vàng cho mỗi vòng"
      ],
      cost: "Tiêu tốn 1 tín dụng cho mỗi lần chơi",
      duration: "Tín dụng có hiệu lực trong 8 giờ"
    },

    vip: {
      title: "TÀI KHOẢN VIP",
      noAds: "KHÔNG QUẢNG CÁO",
      allBoost: "Bao gồm toàn bộ đặc quyền BOOST",
      forever: "Kích hoạt vĩnh viễn"
    },

    credits: {
      title: "TÍN DỤNG",
      addCredits: "Thêm 10 tín dụng",
      usage: "Mỗi trận chơi Boost tiêu thụ 1 tín dụng"
    },

    platforms: {
      availableOn: "Có sẵn trên",
      steam: "Steam",
      googlePlay: "Google Play",
      appStore: "App Store"
    }
  }
};
import { vi } from "./locales/vi";
import express from "express";

const app = express();
const PORT = 3000;

app.get("/servers", (req, res) => {
  res.json([
    { name: "ASIA", ping: 60, online: true },
    { name: "EUROPE", ping: 282, online: true },
    { name: "AUSTRALIA", online: false },
    { name: "SOUTH AMERICA", online: false },
    { name: "NORTH AMERICA", online: false }
  ]);
});

app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
fetch("http://localhost:3000/servers")
  .then(res => res.json())
  .then(data => {
    console.log(data);
  });
  import ping from "ping";

const res = await ping.promise.probe("asia.myserver.com");
console.log(res.time); // ms
class Player {
  hp = 100;

  attack() {
    console.log("Player attacks!");
  }
}

const player = new Player();
player.attack();
import { Server } from "socket.io";

const io = new Server(3000);

io.on("connection", socket => {
  console.log("Player connected");

  socket.on("attack", data => {
    socket.broadcast.emit("playerAttack", data);
  });
});
const isOnline = navigator.onLine;

if (isOnline) {
  startOnlineMode();
} else {
  startOfflineMode();
}
// Offline
localStorage.setItem("gold", "500");

// Online
fetch("/sync", {
  method: "POST",
  body: JSON.stringify({
    gold: localStorage.getItem("gold")
  })
});
const servers = [
  { region: "Asia", ping: 60, online: true },
  { region: "Europe", ping: 280, online: true },
  { region: "NA", online: false }
];
