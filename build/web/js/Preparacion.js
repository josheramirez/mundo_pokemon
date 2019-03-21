document.getElementById("Jugar").disabled = true;

function clickPKMN(valor_id) {
    var VID = valor_id;
	var image = document.getElementById("Img"+VID).src;
	var name = document.getElementById("Nombre"+VID).innerHTML;
	var mote = document.getElementById("Apodo"+VID).innerHTML;
	var ID = document.getElementById("ID"+VID).innerHTML;
	
	document.getElementById('prepImgGra').src = image;
	document.getElementById('prepTextBox').innerHTML = "<h2>"+name+"</h2>";
	document.getElementById('prepTextBox').innerHTML += "<h1>"+mote+"</h1>";
	document.getElementById('prepIDpkmn').value = ID;
	
	document.getElementById("Jugar").disabled = false;
}