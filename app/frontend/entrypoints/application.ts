import "../../assets/stylesheets/application.css";
import "../scripts/color_form";
import "../scripts/mobile_navigation";
import * as ActiveStorage from "@rails/activestorage";
import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";

ActiveStorage.start();
Rails.start();
Turbolinks.start();

// const channels = import.meta.globEager("./**/*_channel.js");
