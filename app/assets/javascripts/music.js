$(function(){ 
	music();
	var on_off = setInterval(music, 800);
	
	$("#canvas").click(function clear() { 
		if (on_off != 0) {
			clearInterval(on_off); 
			on_off = 0; }
		else {
			on_off = setInterval(music, 800);
		}	
	} );
	
} );
	
	
function music()
{
	var canvas = document.getElementById('canvas');
	if(!canvas)
	{
		alert("Impossible de récupérer le canvas");
		return;
	}
	var context = canvas.getContext('2d');
	if(!context)
	{
		alert("Impossible de récupérer le context du canvas");
		return;
	}
	context.fillStyle = "#000000";
	context.fillRect(0,0,300,150);
					
 	context.beginPath();
					
	var r2 = Math.floor((Math.random()*70)+1)+40;
	var r3 = Math.floor((Math.random()*60)+1)+40;
	var r4 = Math.floor((Math.random()*40)+1)+40;
	var r5 = Math.floor((Math.random()*30)+1)+25;
	var r6 = Math.floor((Math.random()*30)+1)+10;
					
	var r7 = Math.floor((Math.random()*20)+1);					
	var r8 = Math.floor((Math.random()*15)+1);	
	var r9 = Math.floor((Math.random()*20)+1);	
					
	var r10 = Math.floor((Math.random()*30)+1)+10;
	var r11 = Math.floor((Math.random()*30)+1)+25;
	var r12 = Math.floor((Math.random()*40)+1)+25;
	var r13 = Math.floor((Math.random()*60)+1)+40;
	var r14 = Math.floor((Math.random()*70)+1)+40;
								
	context.fillStyle = "#fff000";
	context.fillRect(20,r2,15,150);
	context.fillStyle = "#fff000";
	context.fillRect(40,r3,15,150);
	context.fillStyle = "#fff000";
	context.fillRect(60,r4,15,150);
	context.fillStyle = "#fff000";
	context.fillRect(80,r5,15,150);
	context.fillStyle = "#fff000";
	context.fillRect(100,r6,15,150);
	context.fillStyle = "#fff000";
	context.fillRect(120,r7,15,150);
	context.fillStyle = "#fff000";
	context.fillRect(140,r8,15,150);
	context.fillStyle = "#fff000";
	context.fillRect(160,r9,15,150);
	context.fillStyle = "#fff000";
	context.fillRect(180,r10,15,150);
	context.fillStyle = "#fff000";
	context.fillRect(200,r11,15,150);
	context.fillStyle = "#fff000";
	context.fillRect(220,r12,15,150);
	context.fillStyle = "#fff000";
	context.fillRect(240,r13,15,150);
	context.fillStyle = "#fff000";
	context.fillRect(260,r14,15,150);
	context.closePath();
}
				
