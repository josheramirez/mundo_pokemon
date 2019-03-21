/*window.addEventListener("load", function(){
	document.getElementById("registrarse").addEventListener("click", function(){
		var usuario = document.getElementById("usuario").value;
		var email = document.getElementById("email").value;
		var reemail = document.getElementById("reemail").value;
		var password = document.getElementById("password").value;
		var repassword = document.getElementById("repassword").value;
		
		var bandera = false;
		
		var ERE = email.localeCompare(reemail);
		var PRE = password.localeCompare(repassword);
		if(usuario.length>0&&email.length>0&&password.length>0){
			if(ERE === 0 && PRE === 0){
				if(email.includes("@")&&email.includes(".")){
					bandera = true;
				}
				else{
					document.getElementById("err").innerHTML += ("El correo no es válido.<br>");
				}
			}
			else{
				document.getElementById("err").innerHTML += ("La contraseña o el correo están mal ingresados.<br>");
			}
		}
		else{
			document.getElementById("err").innerHTML += ("Rellene todos los campos.<br>");
		}
		if(bandera){
			document.getElementById("register").submit();
		}
	});
});*/
function emailsBlur(){
	var email = document.getElementById("email").value;
	var reemail = document.getElementById("reemail").value;
	var ERE = email.localeCompare(reemail);
	if(ERE === 0){
		document.getElementById("email").style.backgroundColor = "white";
		document.getElementById("reemail").style.backgroundColor = "white";
	}
	else{
		document.getElementById("email").style.backgroundColor = "red";
		document.getElementById("reemail").style.backgroundColor = "red";
	}
}

function Focus(id){
	document.getElementById(id).style.backgroundColor = "white";
}

function passBlur(){
	var password = document.getElementById("password").value;
	var repassword = document.getElementById("repassword").value;
	var PRE = password.localeCompare(repassword);
	if(PRE === 0){
		document.getElementById("password").style.backgroundColor = "white";
		document.getElementById("repassword").style.backgroundColor = "white";
	}
	else{
		document.getElementById("password").style.backgroundColor = "red";
		document.getElementById("repassword").style.backgroundColor = "red";
	}
}