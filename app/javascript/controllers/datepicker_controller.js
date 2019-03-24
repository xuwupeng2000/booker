import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['table']

  connect() {
    $.ajax("/holidays")
      .done((data) => {
        let holiday = [];
        holiday = data.holiday;

        const isWeekends = (date) => {
          return (date.getDay() === 6 || date.getDay() === 0);
        }
        holiday.push(isWeekends);

        // https://flatpickr.js.org/options/
        $(".datepicker").flatpickr({
          dateFormat: "d-M-Y",
          altFormat: "d-M-Y",
          minDate: "today",
          "disable": holiday,
        });
      });
  }
}
