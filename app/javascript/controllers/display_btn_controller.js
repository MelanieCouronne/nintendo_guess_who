import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["button"]

  connect() {
    // this.linkTarget.classList.remove("d-none")
  }
}
