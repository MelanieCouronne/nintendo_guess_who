import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["spanEmail", "inputEmail"]

  displayEmail() {
    let email = this.spanEmailTarget;
    const inputEmail = this.inputEmailTarget.value;
    email.innerText = inputEmail;
  }
}
