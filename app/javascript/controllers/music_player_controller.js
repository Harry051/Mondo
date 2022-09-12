import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="music-player"
export default class extends Controller {
  static targets = ['audio']
  connect() {

  }
  audioplay(e) {
    e.preventDefault();
    this.audioTarget.play();
  }
}
