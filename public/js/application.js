$(document).ready(function() {

  $('#show').on('click', displayList);
  $('#hide').on('click', hideList);	

  $(window).bind("pageshow", function(event) {
    if(event.originalEvent.persisted) {
      window.location.reload()
    }
  });
});

var displayList = function(event){	
  event.preventDefault();
  $('#display').show();
}

var hideList = function(event){	
  event.preventDefault();
  $('#display').hide();
}