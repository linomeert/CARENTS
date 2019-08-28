import "bootstrap";
import Typed from "typed.js"
import { changeContentTabs } from './tabs';

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

initMapbox();
changeContentTabs();



let interests = document.querySelectorAll(".interest-pic")

if(interests){
  interests.forEach((interest) => {
  interest.addEventListener('click', (e) => {
        let id_check = e.target.dataset.checkboxId
        console.log(e.target.dataset.checkboxId)
        console.log(document.querySelector(`#int_${id_check}`))
        document.querySelector(`#int_${id_check}`).click()
        document.querySelector(`#int_${id_check}`).checked ? e.target.style.backgroundColor =   "green" :  e.target.style.backgroundColor =  null



  })
  })
}

var typed = new Typed('#typed', {
  stringsElement: '#typed-strings',
  typeSpeed: 45
});
