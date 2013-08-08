$(function()
{
	$('.commentaires').hide();
	var display_comments = true;
    $(document).ready(function(){
			//ajoute la partie des commentaires à la page d'acceuil
			$('.button_comment').click(function (event){
				if ($(this).children().is(":hidden")) {
					$(this).children().fadeIn();
					display_comments = false;
				}
				else {
					$(this).children().hide();
					display_comments = true;
				}
			 } );
			
			//Définition des couleurs
			var couleur_bleu = "#120F4B";
			//dessin canvas bleu
			var canvas_bleu = document.getElementById('bleu');
			if(!canvas_bleu)
			{
				alert("Impossible de récupérer le canvas");
				return;
			}
			var context_bleu = canvas_bleu.getContext('2d');
			if(!context_bleu)
			{
				alert("Impossible de récupérer le context du canvas");
				return;
			}
			context_bleu.fillStyle = couleur_bleu;
			context_bleu.fillRect(0,0,300,300);
			//actions sur canvas bleu
			$("#bleu").click(function clear() { 
				$("body").css({'background-color' : couleur_bleu});
				$("nav").css({'background-color' : couleur_bleu});

				$("header h2").css({'color' : couleur_blanc})
				$("nav li").css({'color' : couleur_blanc})
				$("nav li").css({'background_color' : couleur_noir})
				$(".nav_article").css({'background-color' : couleur_blanc})
				$(".article").css({'background-color' : couleur_blanc})
				$(".title").css({'color' : couleur_noir})
				$(".button_comment").css({'color' : couleur_noir})
				$(".commentaires").css({'color' : couleur_noir})
			} );

			
			//Définition des couleurs
			var couleur_rouge = "#BD1212";
			//dessin canvas bleu
			var canvas_rouge = document.getElementById('rouge');
			if(!canvas_rouge)
			{
				alert("Impossible de récupérer le canvas");
				return;
			}
			var context_rouge = canvas_rouge.getContext('2d');
			if(!context_rouge)
			{
				alert("Impossible de récupérer le context du canvas");
				return;
			}
			context_rouge.fillStyle = couleur_rouge;
			context_rouge.fillRect(0,0,300,300);
			//actions sur canvas rouge
			$("#rouge").click(function clear() { 
				$("body").css({'background-color' : couleur_rouge});
				$("nav").css({'background-color' : couleur_rouge});

				$("header h2").css({'color' : couleur_blanc})
				$("nav li").css({'color' : couleur_blanc})
				$("nav li").css({'background_color' : couleur_noir})
				$(".nav_article").css({'background-color' : couleur_blanc})
				$(".article").css({'background-color' : couleur_blanc})
				$(".title").css({'color' : couleur_noir})
				$(".button_comment").css({'color' : couleur_noir})
				$(".commentaires").css({'color' : couleur_noir})
			} );

			//Définition des couleurs
			var couleur_blanc = "#FFFFFF";
			//dessin canvas blanc
			var canvas_blanc = document.getElementById('blanc');
			if(!canvas_blanc)
			{
				alert("Impossible de récupérer le canvas");
				return;
			}
			var context_blanc = canvas_blanc.getContext('2d');
			if(!context_blanc)
			{
				alert("Impossible de récupérer le context du canvas");
				return;
			}
			context_blanc.fillStyle = couleur_blanc;
			context_blanc.fillRect(0,0,300,300);
			//actions sur canvas blanc
			$("#blanc").click(function clear() { 
				$("body").css({'background-color' : couleur_blanc});
				$("nav").css({'background-color' : couleur_blanc});
				$("header h2").css({'color' : couleur_noir})
				$("nav li").css({'color' : couleur_noir})
				$("nav li").css({'background_color' : couleur_blanc})
				$(".nav_article").css({'background-color' : couleur_noir})
				$(".article").css({'background-color' : couleur_noir})
				$(".title").css({'color' : couleur_blanc})
				$(".button_comment").css({'color' : couleur_blanc})
				$(".commentaires").css({'color' : couleur_blanc})
			} );

			//Définition des couleurs
			var couleur_noir = "#000000";
			//dessin canvas noir
			var canvas_noir = document.getElementById('noir');
			if(!canvas_noir)
			{
				alert("Impossible de récupérer le canvas");
				return;
			}
			var context_noir = canvas_noir.getContext('2d');
			if(!context_noir)
			{
				alert("Impossible de récupérer le context du canvas");
				return;
			}
			context_noir.fillStyle = couleur_noir;
			context_noir.fillRect(0,0,300,300);
			//actions sur canvas noir
			$("#noir").click(function clear() { 
				$("body").css({'background-color' : couleur_noir});
				$("nav").css({'background-color' : couleur_noir});
				
				$("header h2").css({'color' : couleur_blanc})
				$("nav li").css({'color' : couleur_blanc})
				$("nav li").css({'background_color' : couleur_noir})
				$(".nav_article").css({'background-color' : couleur_blanc})
				$(".article").css({'background-color' : couleur_blanc})
				$(".title").css({'color' : couleur_noir})
				$(".button_comment").css({'color' : couleur_noir})
				$(".commentaires").css({'color' : couleur_noir})
			} );

		} );
} );


