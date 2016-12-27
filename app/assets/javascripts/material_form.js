$(document).ready(function(){
  var counter = 0;

  $("#addNewMaterial").click(function(event){
    appendNewNumbers();
    // TODO on click of this link, grab the node, change the attribuets, and append
    event.stopPropagation();
    event.preventDefault();
  });

  function appendNewNumbers() {
    var materialEl = $("#materials .materialAdditions").last().clone();    
    var selectEl = materialEl.find("select").attr({
        'id': 'product_materials_attributes_' + (++counter) + '_id',
        'name': 'product[materials_attributes][' + (counter) + '][id]'
    });

    var numberofNewSelect = parseInt(selectEl[0].id.match(/\d+/)[0]);

    var forEl = materialEl.find('label');


    forEl.attr('for', ('product_materials_attributes_' + numberofNewSelect + '_name'));
    $("#materials").append(materialEl);
  };




});