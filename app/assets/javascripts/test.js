// let a = 0;
let arr = ["you", "grandma", "everibody"];
let cont = document.getElementById('effect');

const animate = () => {
//   if (a < textEffect.length) {
    // cont.innerHTML = textEffect.charAt(a);
    cont.innerHTML = arr[Math.floor(Math.random() * arr.length)];
    // a ++
    setTimeout(animate, 800);
  // }
}
animate();
