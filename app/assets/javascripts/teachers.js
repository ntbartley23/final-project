# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

var fields = $('.fields');

fields.each(function(){
  
  var field = $(this);
  var input = field.children('input');
  
  input.on('mouseleave',function(){ 
    var self = $(this),
        label = self.prev();
    if ( self.val() !== '' ){
      label.css({
        'z-index': '-9'
      });
    } else {
      label.css({
        'z-index': '9'
      });
    }
  });
  
});
