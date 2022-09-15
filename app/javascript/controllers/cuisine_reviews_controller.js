import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cuisine-reviews"
export default class extends Controller {
  // static targets = ["reviews", "caret"]

  connect() {
    console.log("cuisine-reviews controller-hello");
    const caretBtn = document.querySelector(".reviews-drop-btn");
    const reviewsContent = document.querySelector(".dish-show-reviews-item");

    caretBtn.addEventListener('click', (event) => {
      caretBtn.classList.toggle('fa-caret-down');
      caretBtn.classList.toggle('fa-caret-up');
      reviewsContent.classList.toggle('d-none');
    })
  }

  // revealReviews() {
  //   this.reviewsTarget.classList.toggle("d-none");
  //   this.caretTarget.classList.toggle("fa-caret-down");
  //   this.caretTarget.classList.toggle("fa-caret-up");
  // }
}
