import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-tab"
export default class extends Controller {
  static targets = ["tab"]

  connect() {
  }

  showContent() {
    this.tabTarget.classList.add("tab-new-position");
    this.tabTarget.innerHTML = "<h2>Cooking History</h2> <hr> <p>1. Lasagna</p>";
  }
}
