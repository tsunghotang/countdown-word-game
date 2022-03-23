import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "form", "answer" ]

  connect() {
    this.startTimer()
  }

  disconnect() {
    this.stopTimer()
  }

  stopTimer() {
    clearInterval(this.timer)
  }

  startTimer() {
    this.timer = setTimeout(() => {
      this.submit()
    }, 30000)
  }

  submit() {
    const url = this.formTarget.action;
    fetch(url, {
      headers: { 'Accept': 'application/json' },
      method: 'post',
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        this.formTarget.outerHTML = data.result
        const answerContainer = document.querySelector(".answer-container")
        answerContainer.innerHTML = data.best_answers
        answerContainer.insertAdjacentHTML('afterend', "<a href='javascript:location.reload();' class='btn btn-primary'>Play again?</a>")
      })
  }
}
