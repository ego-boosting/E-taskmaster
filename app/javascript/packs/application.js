// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "jquery";
import "popper.js";
import "bootstrap";
import "../stylesheets/application"
import '@fortawesome/fontawesome-free/js/all'
import "../packs/jscroll.min.js"

// fullcalendar
import {Calendar} from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import listPlugin from '@fullcalendar/list';

// window.$ = window.jQuery = require("jquery");

document.addEventListener('turbolinks:load', function () {
    const calendarEl = document.getElementById('calendar');

    if (calendarEl != null ) {
        const calendar = new Calendar(calendarEl, {
            plugins: [ dayGridPlugin, timeGridPlugin, listPlugin ],
            locale: 'ja',
            headerToolbar: {
            left: 'prev,next today',
            center: 'title',
            right: 'dayGridMonth,listMonth'
            },
            events: '/tasks.json',
            eventColor: '#ffcccc'
        });

        calendar.render();
    }
});

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "chartkick/chart.js"

$('.slick01').on('beforeChange', function(){
    $('.slick-current').removeClass('is--active');
});

$('.slick01').on('afterChange', function(){
    $('.slick-current').addClass('is--active');
});


/*-----------------------------------------
topに戻るボタン
------------------------------------------*/

$(function() {
  $('#back a').on('click',function(event){
    $('body, html').animate({
      scrollTop:0
    }, 800);
    event.preventDefault();
  });
});


