import * as ActiveStorage from '@rails/activestorage';
import Rails from '@rails/ujs';
import { Tooltip } from 'bootstrap';
import 'channels';
import Turbolinks from 'turbolinks';
import '../stylesheets/application';


Rails.start();
Turbolinks.start();
ActiveStorage.start();