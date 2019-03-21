document.getElementById("CharacterCFem").style.filter = "grayscale(100%)";
document.getElementById("CharacterCFem").style.WebkitFilter = "grayscale(100%)";
document.getElementById("CharacterCMas").style.backgroundColor= "rgba(224,224,199,0.5)";
//document.getElementById('CContent').style.display = "none"; 

function GenderC(id){
	var gender = id;
	if(gender === "Hombr"){
		document.getElementById("CharacterCMas").style.filter = "none";
		document.getElementById("CharacterCMas").style.WebkitFilter = "none";
		document.getElementById("CharacterCFem").style.filter = "grayscale(100%)";
		document.getElementById("CharacterCFem").style.WebkitFilter = "grayscale(100%)";
		document.getElementById("CharacterCMas").style.backgroundColor= "rgba(224,224,199,0.5)";
		document.getElementById("CharacterCFem").style.backgroundColor= "rgba(200,200,225,0.5)";
	}
	else{
		document.getElementById("CharacterCMas").style.filter = "grayscale(100%)";
		document.getElementById("CharacterCMas").style.WebkitFilter = "grayscale(100%)";
		document.getElementById("CharacterCFem").style.filter = "none";
		document.getElementById("CharacterCFem").style.WebkitFilter = "none";
		document.getElementById("CharacterCMas").style.backgroundColor= "rgba(200,200,225,0.5)";
		document.getElementById("CharacterCFem").style.backgroundColor= "rgba(224,224,199,0.5)";
	}
}

function GenderCP(id){
	var gender = id;
	if(gender === "CharGH"){
		document.getElementById("CharacterCMas").style.filter = "none";
		document.getElementById("CharacterCMas").style.WebkitFilter = "none";
		document.getElementById("CharacterCFem").style.filter = "grayscale(100%)";
		document.getElementById("CharacterCFem").style.WebkitFilter = "grayscale(100%)";
		document.getElementById("Hombr").checked = true;
		document.getElementById("CharacterCMas").style.backgroundColor= "rgba(224,224,199,0.5)";
		document.getElementById("CharacterCFem").style.backgroundColor= "rgba(200,200,225,0.5)";
	}
	else{
		document.getElementById("CharacterCMas").style.filter = "grayscale(100%)";
		document.getElementById("CharacterCMas").style.WebkitFilter = "grayscale(100%)";
		document.getElementById("CharacterCFem").style.filter = "none";
		document.getElementById("CharacterCFem").style.WebkitFilter = "none";
		document.getElementById("Mujer").checked = true;
		document.getElementById("CharacterCMas").style.backgroundColor= "rgba(200,200,225,0.5)";
		document.getElementById("CharacterCFem").style.backgroundColor= "rgba(224,224,199,0.5)";
	}
}

function ChangeR(valorRaza){
	var R = valorRaza;
	
	document.getElementById('CharRazaH').src = "pic/Hombr/raza/"+R+".png";
	document.getElementById('CharRazaM').src = "pic/Mujer/raza/"+R+".png";
}
function ChangeCO(valorColorOjos){
	var CO = valorColorOjos;
	
	document.getElementById('CharCOH').src = "pic/Hombr/colorOjos/"+CO+".png";
	document.getElementById('CharCOM').src = "pic/Mujer/colorOjos/"+CO+".png";
}
function ChangeCP(valorColorPelo){
	var CP = valorColorPelo;
	
	document.getElementById('CharCPH').src = "pic/Hombr/colorPelo/"+CP+".png";
	document.getElementById('CharCPM').src = "pic/Mujer/colorPelo/"+CP+".png";
}
function ChangeEq(valorEquipo){
	var E = valorEquipo;
	
	document.getElementById('CharEqH').src = "pic/Hombr/equipo/"+E+".png";
	document.getElementById('CharEqM').src = "pic/Mujer/equipo/"+E+".png";
}

function ShowAll(){
	document.getElementById('CContent').style.display = "block";
	document.getElementById('StarterM').style.display = "none";
}