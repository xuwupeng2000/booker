import { Controller } from "stimulus"

export default class extends Controller {
  static targets = []

  connect() {
  $(".js-chosen-select").chosen({
    width: "50%",
    allow_single_deselect: true,
    disable_search_threshold: 10
  });

  $(".js-chosen-select-must-select").chosen({
    width: "50%",
    allow_single_deselect: false,
    disable_search_threshold: 10
  });

  $(".js-chosen-fw-select").chosen({
    width: "100%",
    allow_single_deselect: true,
    disable_search_threshold: 10
  });
  }
}
