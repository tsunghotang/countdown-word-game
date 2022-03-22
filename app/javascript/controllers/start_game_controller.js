import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "form", "letters", "dial", "audio" ]

  initialize() {
    this.wakeupAPI
  }


  wakeupAPI() {
    fetch("https://countdown-word-game-api.herokuapp.com/")
  }

  start() {
    event.preventDefault()
    const url = this.formTarget.action
    console.log(url)
    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.lettersTarget.outerHTML = data
      })

      // this.formTarget.style.display = 'none'
      this.formTarget.outerHTML = ''
      this.dialTarget.classList.add('turn')
      this.audioTarget.play();


  }
}
