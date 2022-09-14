import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert', {
  title: "Thanks! Review submitted.",
  text: "Now share then go check your level-up on profile page",
  icon: "success"
}, (value) => {
  if (value) {
    const link = document.querySelector('#submit-review');
    link.click();
  }
});

console.log("Hello world!");
