$(document).ready(function() {

  $('#show').on('click', displayList);
  $('#hide').on('click', hideList); 
  $('.say').on('click', sayText); 

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

var sayText = function(event){ 
  event.preventDefault();
  var text = $(this).parent().children('.spoken_text').text();
  var msg = new SpeechSynthesisUtterance(text);
  window.speechSynthesis.speak(msg);
  // text = encodeURIComponent(text);
  // var url = "https://translate.google.com/translate_tts?ie=UTF-8&q=" + text + "&tl=en"
  // $('audio').attr('src', url).get(0).play();
}

