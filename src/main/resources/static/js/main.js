$(document).ready(function(){
	var obj=['id','username','email','password'];
	$('.sel_users').change(function(){
		for(o in obj)$('.'+obj[o]).val($(this).find(':selected').data(obj[o]));
	});
});