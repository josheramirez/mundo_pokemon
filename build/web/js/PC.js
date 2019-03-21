function focusPK(valor_ID){
	var ID = valor_ID;
	var nombre = document.getElementById('Nombre'+ID);
	var mote = document.getElementById('Apodo'+ID);
	
	var img = document.getElementById('Img'+ID).src;
	
	var tipo = document.getElementById('Tipo'+ID);
	var especie = document.getElementById('Especie'+ID);
	var nivel = document.getElementById('Nivel'+ID);
	var salud = document.getElementById('Salud'+ID);
	var I = document.getElementById('IDpkmn'+ID);
	
	document.getElementById('PokName').innerHTML = '<div>'+nombre.innerHTML+'</div>';
	document.getElementById('PokName').innerHTML += '<div>'+mote.innerHTML+'</div>';
	document.getElementById('ImgPokGra').src = img;
	document.getElementById('SPok').innerHTML = '<div>'+tipo.innerHTML+'</div>';
	document.getElementById('SPok').innerHTML += '<div>'+especie.innerHTML+'</div>';
	document.getElementById('SPok').innerHTML += '<div>'+nivel.innerHTML+'</div>';
	document.getElementById('SPok').innerHTML += '<div>'+salud.innerHTML+'</div>';
	document.getElementById('SPok').innerHTML += '<div>'+I.innerHTML+'</div>';
}
function blurPK(){
	document.getElementById('PokName').innerHTML = '<div>Elige un pokemon!</div>';
	document.getElementById('ImgPokGra').src = "pic/PKball.png";
	document.getElementById('SPok').innerHTML = '<div>Pasa el cursor por sobre algúno de tus pokémons para verlo en detalle o haz click sobre ellos para opciones adicionales.</div>';
}

function clickPK(valor_ID){
	var ID = valor_ID;
	var nombre = document.getElementById('Nombre'+ID);
	var mote = document.getElementById('Apodo'+ID);
	var I = document.getElementById('ID'+ID);
	
	var Canti = document.getElementById('TEq').innerHTML;
	
	//document.getElementById('all').style.filter = 'blur(3px)';
	//document.getElementById('all').style.WebkitFilter = 'blur(3px)';  
	
	document.getElementById('Opt').innerHTML = '<div id="OptPK">';
	document.getElementById('OptPK').innerHTML = '<span class="close" onclick="clickXonOPT()">&times;</span>';
	
	if(mote === ''){
		document.getElementById('OptPK').innerHTML += '<div>'+nombre.innerHTML+'</div>';
	}
	else{
		document.getElementById('OptPK').innerHTML += '<div>'+nombre.innerHTML+'</div>';
		document.getElementById('OptPK').innerHTML += '<div>'+mote.innerHTML+'</div>';
	}
	
	document.getElementById('OptPK').innerHTML += '<div style="height:10px"></div>'
	
	document.getElementById('OptPK').innerHTML += '<div>'
	+'<button type="button" onclick="LiberarPK('+ID+')" class="bnOpt">Liberar</button>'
	+'</div>';
	document.getElementById('OptPK').innerHTML += '<div>'
	+'<button type="button" onclick="RenamePK('+ID+')" class="bnOpt">Renombrar</button>'
	+'</div>';
	if(Canti != 6){
		document.getElementById('OptPK').innerHTML += '<div>'
		+'<form action="Operacion" method="get">'
		+'<input name="ID" type="hidden" value="'+I.innerHTML+'">'
		+'<input type="submit" name="action" value="Asignar" class="bnOpt">'
		+'</form>'
		+'</div>';
	}
	
	document.getElementById('Opt').innerHTML += '</div>';
}

function clickPKAs(valor_ID){
	var ID = valor_ID;
	var nombre = document.getElementById('Nombre'+ID);
	var mote = document.getElementById('Apodo'+ID);
	var I = document.getElementById('ID'+ID);
	
	var Canti = document.getElementById('TEq').innerHTML;
	
	//document.getElementById('all').style.filter = 'blur(3px)';
	//document.getElementById('all').style.WebkitFilter = 'blur(3px)';  
	
	document.getElementById('Opt').innerHTML = '<div id="OptPK">';
	document.getElementById('OptPK').innerHTML = '<span class="close" onclick="clickXonOPT()">&times;</span>';
	
	if(mote === ''){
		document.getElementById('OptPK').innerHTML += '<div>'+nombre.innerHTML+'</div>';
	}
	else{
		document.getElementById('OptPK').innerHTML += '<div>'+nombre.innerHTML+'</div>';
		document.getElementById('OptPK').innerHTML += '<div>'+mote.innerHTML+'</div>';
	}
	
	document.getElementById('OptPK').innerHTML += '<div style="height:10px"></div>'
	
	document.getElementById('OptPK').innerHTML += '<div>'
	+'<button type="button" onclick="LiberarPK('+ID+')" class="bnOpt">Liberar</button>'
	+'</div>';
	document.getElementById('OptPK').innerHTML += '<div>'
	+'<button type="button" onclick="RenamePK('+ID+')" class="bnOpt">Renombrar</button>'
	+'</div>';
	if(Canti != 1){
	document.getElementById('OptPK').innerHTML += '<div>'
	+'<form action="Operacion" method="get">'
	+'<input name="ID" type="hidden" value="'+I.innerHTML+'">'
	+'<input type="submit" name="action" value="Desasignar" class="bnOpt">'
	+'</form>'
	+'</div>';
	}
	
	document.getElementById('Opt').innerHTML += '</div>';
}

function LiberarPK(valor_ID){
	var ID = valor_ID;
	var I = document.getElementById('ID'+ID);
	
	document.getElementById('OptPK').innerHTML = '<span class="close" onclick="clickXonOPT()">&times;</span>';
	
	document.getElementById('OptPK').innerHTML += '<div>¿Está seguro de quererlo liberar?</div>';
	
	document.getElementById('OptPK').innerHTML += '<div>'
	+'<form action="Operacion" method="get">'
	+'<input name="ID" type="hidden" value="'+I.innerHTML+'">'
	+'<input type="submit" name="action" value="Liberar" class="bnOpt">'
	+'</form>'
	+'<button type="button" onclick="clickPK('+ID+')" class="bnOpt">Cancelar</button>'
	+'</div>';
}

function RenamePK(valor_ID){
	var ID = valor_ID;
	var nombre = document.getElementById('Nombre'+ID);
	var mote = document.getElementById('Apodo'+ID);
	var I = document.getElementById('ID'+ID);
	
	if(mote === ''){
		document.getElementById('OptPK').innerHTML += '<div>'+nombre.innerHTML+'</div>';
	}
	else{
		document.getElementById('OptPK').innerHTML += '<div>'+nombre.innerHTML+'</div>';
		document.getElementById('OptPK').innerHTML += '<div>'+mote.innerHTML+'</div>';
	}
	
	document.getElementById('OptPK').innerHTML = '<span class="close" onclick="clickXonOPT()">&times;</span>';
	
	document.getElementById('OptPK').innerHTML += '<div>'
	+'<form action="Operacion" method="get">'
	+'<input name="ID" type="hidden" value="'+I.innerHTML+'">'
	+'<input name="mote" type="text" placeholder="Ingrese el nuevo nombre">'
	+'<input type="submit" name="action" value="Renombrar" class="bnOpt">'
	+'</form>'
	+'</div>';
}

function clickXonOPT(){
	
	document.getElementById('Opt').innerHTML = '';
}