import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="heart"
export default class extends Controller {
  connect() {
  }

  static targets = ["heart"]

  colorHeart(event) {
    this.element.classList.remove('fa-regular');
    this.element.classList.add('heart');
    this.element.classList.add('fa-solid');
  }
}
