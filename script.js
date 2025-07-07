// Matrix Background Animation
const canvas = document.getElementById('matrix');
const ctx = canvas.getContext('2d');

canvas.height = window.innerHeight;
canvas.width = window.innerWidth;

let letters = '01';
letters = letters.split('');

let fontSize = 14;
let columns = canvas.width / fontSize;
let drops = [];

for (let i = 0; i < columns; i++) {
  drops[i] = 1;
}

function draw() {
  ctx.fillStyle = 'rgba(0, 0, 0, 0.05)';
  ctx.fillRect(0, 0, canvas.width, canvas.height);

  ctx.fillStyle = '#0F0';
  ctx.font = fontSize + 'px monospace';

  for (let i = 0; i < drops.length; i++) {
    let text = letters[Math.floor(Math.random() * letters.length)];
    ctx.fillText(text, i * fontSize, drops[i] * fontSize);

    if (drops[i] * fontSize > canvas.height && Math.random() > 0.975) {
      drops[i] = 0;
    }

    drops[i]++;
  }
}

setInterval(draw, 33);

// Button Toggle
function toggleSection(id) {
  const sections = document.querySelectorAll('.section');
  sections.forEach((section) => {
    if (section.id === id) {
      section.style.display = section.style.display === 'block' ? 'none' : 'block';
    } else {
      section.style.display = 'none';
    }
  });
}
