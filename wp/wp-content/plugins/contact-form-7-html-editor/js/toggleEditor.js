// display toggle button
jQuery(document).ready(function($){
  jQuery("#wpcf7-form,#wpcf7-mail-body").addClass("toggleEditor");        	
  jQuery(".toggleEditor").each(function() {
    var id = $(this).attr("id");
    jQuery("<a class='edit_toggle_left button-secondary' id='editorOn" + id + "' onclick=\"toggleEditorOn('" + id + "')\">PREVIEW</a><a class='edit_toggle_right button-primary' id='editorOff" + id + "' onclick=\"toggleEditorOff('" + id + "')\">HTML</a>").insertAfter("#"+id); //Toggle Editor On/Off
  });
});
function toggleEditorOn(id) {
	if (typeof(tinyMCE) != "undefined") {
		tinyMCE.execCommand('mceAddEditor', false, id);
		jQuery("input[name=wpcf7-save]").hide();
		jQuery(".save-contact-form").append('<span class="save_message">Please switch back to HTML view before saving!</span>');
		jQuery("#editorOn" + id).addClass('button-primary');
		jQuery("#editorOff" + id).removeClass('button-primary').addClass('button-secondary');
	}
}

function toggleEditorOff(id){	
	tinyMCE.execCommand('mceRemoveEditor', false, id);
	jQuery(".save_message").remove();
	jQuery("input[name=wpcf7-save]").show();
	jQuery("#editorOn" + id).removeClass('button-primary').addClass('button-secondary');
	jQuery("#editorOff" + id).removeClass('button-secondary').addClass('button-primary');
}