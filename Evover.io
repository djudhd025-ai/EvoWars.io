const logoImg = new Image();
logoImg.src = "logo.png"; // đường dẫn ảnh của bạn
function drawLogo() {
  const x = canvas.width / 2;
  const y = canvas.height / 2;

  const width = 150;
  const height = 150;

  ctx.drawImage(
    logoImg,
    x - width / 2,
    y - height / 2,
    width,
    height
  );

  // chữ dưới logo
  ctx.fillStyle = "white";
  ctx.font = "20px Arial";
  ctx.textAlign = "center";
  ctx.fillText("Evover.io", x, y + 100);
}
function update() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);

  drawLogo(); // vẽ logo

  requestAnimationFrame(update);
}
drawSword();
drawPlayer();
drawWings();
drawHelmet();
