import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["trophy"]

  connect() {
    console.log("Hello from sparkles");
    console.log(this.trophyTarget);

    // console.log(this.toPasteEmailTarget);
  }

  // $btn = document.querySelector(".button");

// $btn.addEventListener("click", function() {
//     var self = this;
//     this.classList.add("pressed");
//     setTimeout(function () {
//       self.classList.remove("pressed");
//     }, 350);
//   });

}
