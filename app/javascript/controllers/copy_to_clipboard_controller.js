import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["toPasteEmail", "toCopyEmail", "toPastePassword", "toCopyPassword"]

  connect() {
    // console.log("Hello from clipboard");
    // console.log(this.toCopyEmailTarget);
    // console.log(this.toPasteEmailTarget);
  }

  copyEmail() {
    const email = this.toCopyEmailTarget.innerText;
    let emailInput = this.toPasteEmailTarget;
    emailInput.value = email;
  };

  copyPassword() {
    const password = this.toCopyPasswordTarget.innerText;
    let passwordInput = this.toPastePasswordTarget;
    passwordInput.value = password;
  };

  changeIcon(event) {
    const targetToToggle = event.target
    targetToToggle.classList.remove('fa-regular', 'fa-clone');
    targetToToggle.classList.add('fa-solid', 'fa-check');
    setTimeout(() => {
      targetToToggle.classList.remove('fa-solid', 'fa-check');
      targetToToggle.classList.add('fa-regular', 'fa-clone');
      }, 2000);
  }
}
