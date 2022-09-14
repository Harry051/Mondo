import { Controller } from "@hotwired/stimulus"
import swal from 'sweetalert';

// Connects to data-controller="review-confirmation"
export default class extends Controller {
  connect() {
    console.log("New review popup!");

    const initSweetalert = (selector, options = {}, callback = () => {}) => {
      const swalButton = document.querySelector(selector);
        if (swalButton) { // protect other pages
          swalButton.addEventListener('click', (e) => {
            e.preventDefault();
            swal(options).then(callback); // <-- add the `.then(callback)`
          });
        }
    };

    initSweetalert('#sweet-alert', {
      title: "Thanks! Review submitted.",
      text: "Share and come cook again! :D",
      icon: "success"
    }, (value) => {
      if (value) {
        const link = document.querySelector('#submit-review');
        link.click();
      }
    });
  }
}
