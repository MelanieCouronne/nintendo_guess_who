import { Controller } from "@hotwired/stimulus";
import $ from "jquery";
import "select2";
import "select2/dist/css/select2.min.css";

export default class extends Controller {
  connect() {
    $(this.element).select2({
      width: "100%"
    });

    $(".js-example-placeholder-single").select2({
      placeholder: "Please, select a question",
      allowClear: true
    });

    // $(".js-example-basic-multiple-limit").select2({
    //   maximumSelectionLength: 1
    // });
  };

}
