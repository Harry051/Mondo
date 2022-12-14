import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cuisine-history"
export default class extends Controller {
  static targets = ["content", "arrow"]

  connect() {
    console.log("cuisine-history controller-hello");
    const dropBtn = document.querySelector(".cuisine-drop-btn");
    const dropContent = document.querySelector(".dish-flag-country-drop-content");
    const dropProfile = document.querySelector(".tab-position-new");

    dropBtn.addEventListener('click', (event) => {
      dropBtn.classList.toggle('fa-caret-down');
      dropBtn.classList.toggle('fa-caret-up');
      dropContent.classList.toggle('d-none');
    })
  }

  revealContent() {
    // this.contentTarget.classList.toggle("d-none");
    // this.arrowTarget.classList.toggle("fa-caret-down");
    // this.arrowTarget.classList.toggle("fa-caret-up");
  }
}
