//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require masonry/masonry.min

$(document).ready(function(){
  $(".results-area").masonry({
    itemSelector: '.box',
    columnWidth: 160
  })
})
