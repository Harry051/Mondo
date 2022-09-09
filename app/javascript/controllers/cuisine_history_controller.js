import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cuisine-history"
export default class extends Controller {
  static targets = ["content"]

  connect() {
    console.log("anything")
  }

  revealContent() {
    console.log(this.contentTarget)
    this.contentTarget.classList.toggle("d-none")
  }
}
