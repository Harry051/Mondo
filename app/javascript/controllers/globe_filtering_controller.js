import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="globe-filtering"
export default class extends Controller {
  static targets = ['globe']
  connect() {
  }

  search(event) {
    event.preventDefault();
    let category = event.currentTarget.dataset.category;
    fetch(`/?category=${category}`, {
      headers: { "Accept": "application/json" }
    })
    .then(response => response.json())
    .then((data) => {
      this.globeTarget.outerHTML = data.new_globe;
    })
  }
}
