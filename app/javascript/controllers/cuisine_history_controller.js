import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cuisine-history"
export default class extends Controller {
  static targets = ["content", "arrow"]

  connect() {
  }

  revealContent() {
    this.contentTarget.classList.toggle("d-none");
    this.arrowTarget.classList.toggle("fa-caret-down");
    this.arrowTarget.classList.toggle("fa-caret-up");
  }
}
