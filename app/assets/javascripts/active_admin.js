//= require active_admin/base
//= require locations
//= require just_datetime_picker/nested_form_workaround
$(document).ready(function(){
	$(document.body).delegate("form.formtastic", 'keypress', function(e){
		if(e.keyCode==13){
			return false;
		}
	});
});

function preventEnterSubmit(e) {
    var key;      
     if(window.event)
          key = window.event.keyCode; //IE
     else
          key = e.which; //firefox      

     return (key != 13);
}

$('a.button').live('click', function() {
  $('input.datepicker:not(.hasDatepicker)').datepicker();
});