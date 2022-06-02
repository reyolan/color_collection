import "../../assets/stylesheets/application.css";

import * as ActiveStorage from "@rails/activestorage";
import * as Rails from "@rails/ujs";
import Turbolinks from "turbolinks";

ActiveStorage.start();
Rails.start();
Turbolinks.start();

// const channels = import.meta.globEager("./**/*_channel.js");
