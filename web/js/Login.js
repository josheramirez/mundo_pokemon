window.addEventListener("load", function(){
	document.getElementById("ingresar").addEventListener("click", function(){
		var usuario = document.getElementById("usuario").value;
		var password = document.getElementById("password").value;
		var bandera = false;
		if(usuario.length>0&&password.length>0){
			bandera = true;
		}
		if(bandera){
			document.getElementById("login").submit();
		}
		else{
			document.getElementById("err").innerHTML = ("Rellene todos los campos.");
		}
	});
});