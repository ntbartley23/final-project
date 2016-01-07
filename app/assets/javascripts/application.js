// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


// ss


function RobotSpeaker()
 {
   this.u = new SpeechSynthesisUtterance();

	try{
		this.u = new SpeechSynthesisUtterance();
	}
	catch(ex){
		throw "This browser does not have support for webspeech api";
	}
     this.u.rate = 1.0;
     this.u.onend = function(event) {
         //TODO
 @@ -28,8 +32,14 @@ function RobotSpeaker()
  */
 function AudioListener(callback)
 {
    this.listener = new webkitSpeechRecognition();

	try{
		this.listener = new webkitSpeechRecognition();
	}
	catch(ex){
		throw "This browser does not have support for webspeech api";
		
	}
    
     if(platform.os.toString().indexOf("OS X") > -1) {
         this.listener.continuous = true;
     }

