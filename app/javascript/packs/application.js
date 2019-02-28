import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { setupAddActivityForm, setupSelectActivitiesForm } from '../components/forms';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { cardsFunction } from '../components/dashboards';


initMapbox();
setupAddActivityForm();
setupSelectActivitiesForm();
initAutocomplete();
cardsFunction();
