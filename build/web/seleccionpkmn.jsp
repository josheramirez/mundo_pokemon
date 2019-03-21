<%-- 
    Document   : seleccionpkmn
    Created on : 16-ene-2019, 20:43:29
    Author     : CapacitaPlural01
--%>
<%@page import="Modelos.Pokemon"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seleccion pkmn</title>
        
        <style>
            .col{
                width:500px;
                height:3500px;
                background-color: whitesmoke;
                align-items: center;    
            }
            .fila{
   
               display:inline-block;
            }
            .cont{
                
                display: block;
                border-radius: 25px;
                border:10px;
                float:left;
               
            }
            .pkbl{
                width:10%;
                height: 10%;
                display:inline-block;
            }
        </style>
    </head>
    <body>
        
        <div align="center"><h1>Seleciona 3 Pokemon</h1>
            
            <div class='pkbl'><img src="prev/pkball1.png" height="25" width="25" id="poke1" onmouseout="req1(this)" onclick="quitar(this)"/></div>
            <div class="pkbl"><img src="prev/pkball1.png" width="25px" heigth="25px" id="poke2" onmouseout="req2(this)" onclick="quitar(this)"/></div>
            <div class="pkbl"><img src="prev/pkball1.png" width="25px" heigth="25px" id="poke3" onmouseout="req3(this)" onclick="quitar(this)"/></div>
            
            <div align="rigth">
                <form action="crearPokemon">
                    <input type="hidden" name="pokemones" id="lista_pokemones">
                    <input type="submit" value="Siguiente" style="height:30px; width: 100px;" disabled="true" onload="des(this)"  id="btn"></button>
                </form>
                <!--<button style="height:30px; width: 100px;" disabled="true" onload="des(this)"  id="btn" action="/pkmnsalida.java">Siguiente</button>-->
            
            </div>
            <br><br><br>

            
       <%
        int id=0;
        ArrayList<Pokemon> lista_pokemon=(ArrayList<Pokemon>)request.getAttribute("pokemones");  
        for(Pokemon pokemon : lista_pokemon){
       %>
       <img  src="<%=pokemon.imagen%>" border='10' height='100px' width='100px' 
               style='border-color:black' onmouseover='funcion(this)' onmouseout='func(this)' 
               onclick='clic(this)' id="<%=pokemon.id%>"></img>
       <%
        id++;
            if(id%5==0 && id!=0){ 
        %>
        <br>
        <%
        }
        }
        %>
              
            
            
            
        <script>
                    function funcion(pkmn){
                        pkmn.style.borderColor="yellow";
                    }
                    function func(pkmn){
                        if(pkmn.style.borderColor="red"){
                        pkmn.style.borderColor="black";
                       
                    }else{pkmn.style.borderColor="red";}
                    }
                    var conf=0;
                    var ids =0;
                    var pkmns=[];
                    function clic(pkmn){
                        
                        if(conf<3){;
                            pkmns[ids]=pkmn.id;
                        if(pkmn.style.borderColor==="yellow"){
                             pkmn.style.borderColor="red";
                        switch(ids){
                            case 0:document.getElementById("poke1").src="prev/descarga.png";
                                ids++;
                                conf++;
                            break;
                                case 1:document.getElementById("poke2").src="prev/descarga.png";
                                    ids++;
                                    conf++;
                                break;
                                case 2:document.getElementById("poke3").src="prev/descarga.png";
                                    ids++;
                                    conf++;
                                    break;
                        }       
                                      
                        }
                    }
                       confbtn();
                        return ids,conf;
                        }
                    function confbtn(){
                        if(conf===3){
                           document.getElementById("lista_pokemones").value=pkmns;
                          
                           document.getElementById("btn").disabled=false;
                        }else{document.getElementById("btn").disabled=true; }
                    }
                    function req1(){
                        //if(pkmns[0]){alert(pkmns[0]);}
                    }
                    function req2(){
                        //if(pkmns[1]){alert(pkmns[1]);}
                    }
                    function req3(){
                        //if(pkmns[2]){alert(pkmns[2]);}
                    }
                    function quitar(pkbl){
                        pkbl.src="prev/pkball1.png";
                      
                        switch(pkbl.id){
                            case "poke1":
                                pkmns[0]=null;
                                ids=0;
                                conf--;
                                break;
                            case "poke2":
                                pkmns[1]=null;
                                ids=1;
                                conf--;
                            break;
                            case "poke3":
                                pkmns[2]=null;
                                ids=2;
                                conf--;
                                break;    
                        }confbtn();
                        
                        return conf;
                        
                    }
                   
                    
                function des(){
                    document.getElementById("btn").disabled = true;
                }
                      
                    
                </script>
        
        
        </div>
    </body>
</html>
