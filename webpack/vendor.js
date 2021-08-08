import 'jquery';
import '@popperjs/core';
import 'bootstrap';
import 'js-cookie';

import { dom, library } from '@fortawesome/fontawesome-svg-core';
import { faPaperPlane } from '@fortawesome/free-solid-svg-icons';

library.add(faPaperPlane);
dom.watch();