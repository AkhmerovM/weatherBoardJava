import {Slider} from "./slider";
import './price-list';
import '../css/my-style.css';

$(document).ready(function () {
    const sldrRoot = document.querySelector('.sim-slider');
    if (sldrRoot) {
        new Slider();
    }
});

