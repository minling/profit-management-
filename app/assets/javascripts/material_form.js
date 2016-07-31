$(document).ready(function(){
  $("#addNewMaterial").click(function(){
    $("#materialAdditions").append($("#new_materials_form").html());
  });
});