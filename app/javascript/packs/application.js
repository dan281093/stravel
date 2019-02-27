import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { setupAddActivityForm } from '../components/forms';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { cardsFunction } from '../components/dashboards';


initMapbox();
setupAddActivityForm();
initAutocomplete();
cardsFunction();
