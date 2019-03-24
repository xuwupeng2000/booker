import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['table']

  connect() {
    new Tablesort(this.tableTarget);
  }
}
