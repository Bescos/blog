$(function()
{
	$('.commentaires').hide();
	var display_comments = true;
    $(document).ready(function(){
	//ajoute la partie des commentaires à la page d'acceuil
		$('.button_comment').click(function (event){
			if ($(this).children().is(":hidden")) {
				$(this).children().show();
				display_comments = false;
			}
			else {
				$(this).children().hide();
				display_comments = true;
			}
	   } );
	} );
} );
