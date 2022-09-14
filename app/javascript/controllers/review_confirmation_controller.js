import { Controller } from "@hotwired/stimulus"
import swal from 'sweetalert';

// Connects to data-controller="review-confirmation" ...
// Activated on form submit in Review/new
export default class extends Controller {
  connect() {
    console.log("review-confirm controller-hello");

    const initSweetalert = (selector, options = {}, callback = () => {}) => {
      const swalButton = document.querySelector(selector);
        if (swalButton) { // protect other pages
          swalButton.addEventListener('click', (e) => {
            e.preventDefault();
            swal(options).then(callback);
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
