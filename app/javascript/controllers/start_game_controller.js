import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "form", "letters", "dial", "audio", "highlight" ]

  initialize() {
    this.wakeupAPI
  }

  wakeupAPI() {
    fetch("https://countdown-word-game-api.herokuapp.com/")
      .then(response => response.text())
  }

  start() {
    event.preventDefault()

    const url = this.formTarget.action
    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.lettersTarget.outerHTML = data
      })

      this.formTarget.outerHTML = ''
      this.dialTarget.classList.add('turn')
      this.highlightTarget.classList.add('turn')

      this.audioTarget.play();
  }
}
