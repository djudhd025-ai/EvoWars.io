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
