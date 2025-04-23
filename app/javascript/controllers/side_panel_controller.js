import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="side-panel"
export default class extends Controller {
  static targets = ["panel"];
  connect() {
    setTimeout(() => {
      this.element.dataset.complete = true;
    }, 50);
  }

  hidePanel() {
    this.element.dataset.complete = false;
    setTimeout(() => {
      this.element.parentElement.removeAttribute("src");
      this.element.remove();
    }, 600);
  }

  closeOnEscape(event) {
    if (event.code === "Escape") {
      this.hidePanel();
    }
  }

  closeOnClick(event) {
    if (event && this.panelTarget.contains(event.target)) {
      return;
    }
    this.hidePanel();
  }
}
