
$( document ).ready(function() {
  $('#new_product').submit(function(e) {
    e.preventDefault();  //prevent form from submitting
        var data = $("#new_product :input").serializeArray();
        console.log(data); //use the console for debugging, F12 in Chrome, not alerts
  });
});