function focusPK(valor_ID){
	var ID = valor_ID;
	var nombre = document.getElementById('Nombre'+ID);
	
	var img = document.getElementById('Img'+ID).src;
	
	var tipo = document.getElementById('Tipo'+ID);
	var especie = document.getElementById('Especie'+ID);
	var nivel = document.getElementById('Nivel'+ID);
	var salud = document.getElementById('Salud'+ID);
	var I = document.getElementById('IDpkmn'+ID);
	
	document.getElementById('PokName').innerHTML = '<div style="top:25%">'+nombre.innerHTML+'</div>';
	document.getElementById('ImgPokGra').src = img;
	document.getElementById('SPok').innerHTML = '<div>'+I.innerHTML+'</div>';
	document.getElementById('SPok').innerHTML += '<div>'+tipo.innerHTML+'</div>';
	document.getElementById('SPok').innerHTML += '<div>'+especie.innerHTML+'</div>';
	document.getElementById('SPok').innerHTML += '<div></div>';
	document.getElementById('SPok').innerHTML += '<div></div>';
	document.getElementById('SPok').innerHTML += '<div></div>';
}
function blurPK(){
	document.getElementById('PokName').innerHTML = '<div>Elige un pokemon!</div>';
	document.getElementById('ImgPokGra').src = "pic/PKball.png";
	document.getElementById('SPok').innerHTML = '<div>Pasa el cursor por sobre algúno de tus pokémons para verlo en detalle.</div>';
}