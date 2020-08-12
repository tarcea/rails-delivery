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

// const images = require.context('.../images', true);

new Typewriter('#effect', {
  strings: ["Ruby on Rails", "PostgreSQL", "Java script", "React", "Heroku", "Bootstrap",
            "HTML", "CSS", "Git", "Github", "Slack", "Trello",
            "Figma"],
  autoStart: true,
  loop: true,
});


