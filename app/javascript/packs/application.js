import "bootstrap";
// require("@rails/ujs").start();
// require("turbolinks").start();
// require("@rails/activestorage").start();
// require("channels");

// var jQuery = require("jquery");

// // import jQuery from "jquery";
// global.$ = global.jQuery = jQuery;
// window.$ = window.jQuery = jQuery;

// require("bootstrap");
// require("admin-lte");
// const element = document.querySelector('.hover-menu');
// element.addEventListener("click", event => {

// });
// document.addEventListener("touchstart", function(){}, true);
// console.log("Hello from app/javascript/packs/application.js!");
// import { animate } from '../animate';
// animate();
// setInterval(() => {
//   animate();
// }, 1000);
import Typewriter from 'typewriter-effect/dist/core';

new Typewriter('#effect', {
  strings: ["you", "grandma", "pets", "aliens", "kids", "pigs",
            "elephants", "cats", "dogs", "flowers", "trees", "monkies",
            "cars", "cows", "wine", "beer"],
  autoStart: true,
  loop: true,
});
