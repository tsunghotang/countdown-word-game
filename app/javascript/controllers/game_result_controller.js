import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "form", "dial", "answer", "audio" ]
  connect() {
    console.log('timer!')
  }
  result() {
    event.preventDefault()
    this.dialTarget.classList.add("pause")
    this.audioTarget.pause()

    const url = this.formTarget.action;
    fetch(url, {
      headers: { 'Accept': 'application/json' },
      method: 'post',
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        this.formTarget.outerHTML = data.result
        this.answerTarget.innerHTML = data.best_answers
        this.answerTarget.insertAdjacentHTML('afterend', "<a href='javascript:location.reload();' class='btn btn-primary'>Play again?</a>")
      })
  }
}
