import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="typedjs"
export default class extends Controller {
  connect() {
    console.log('hello')

    var options = {
      strings: ['<i>First</i> sentence.', '&amp; a second sentence.'],
      typeSpeed: 40
    };
  }
}
