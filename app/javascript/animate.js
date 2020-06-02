let a = 0;
const arr = ["you", "grandma", "pets", "aliens", "kids", "pigs", "elephants", "cats", "dogs", "flowers", "trees", "monkies", "cars", "and much more..."]
// var textEffect = "hello and good luck"
const cont = document.getElementById('effect');
const animate = () => {
    if (a < arr.length) {
      // cont.innerHTML = textEffect.charAt(a);
      // cont.innerHTML = arr[Math.floor(Math.random() * arr.length)];
      cont.innerHTML = arr[a];
      a ++
      setTimeout(animate, 1000);
    }
}

// animate();
export { animate };
