import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cuisine-reviews"
export default class extends Controller {
  static targets = ["reviews", "caret"]

  connect() {
    console.log("hiii")
  }

  revealReviews() {
    this.reviewsTarget.classList.toggle("d-none");
    this.caretTarget.classList.toggle("fa-caret-down");
    this.caretTarget.classList.toggle("fa-caret-up");
  }
}
