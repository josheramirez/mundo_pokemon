
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <div class="game">
            <div class="opponent">
              <div class="stats">
                <div class="top">
                  <div class="pokeballs">
                    <div class="pokeball"></div>
                    <div class="pokeball"></div>
                    <div class="pokeball"></div>
                    <div class="pokeball"></div>
                    <div class="pokeball"></div>
                  </div>
                  <div id = "apHP" class="hp-count"><%=request.getAttribute("hp_op")%></div>
                </div>
                <span class="name">
                    OPONENTE
                </span>
                <span class="level">
                    <%=request.getAttribute("level_op")%>
                </span>
              </div>
                <img class="pokemon" src="<%=request.getAttribute("img_op")%>" alt ="A sprite of pokemon oponent" />
            </div>
            <div class="player">
              <div class="stats">
                <div class="top">
                  <div class="pokeballs">
                    <div class="pokeball"></div>
                    <div class="pokeball"></div>
                    <div class="pokeball"></div>
                    <div class="pokeball"></div>
                    <div class="pokeball"></div>
                  </div>
                  <div id = "myHP" class="hp-count"><%=request.getAttribute("hp_usr")%></div>
                </div>
                <span class="name">
                <%=request.getAttribute("nombre_pokemon_usr")%>
                </span>
                <span class="level">
                  <%=request.getAttribute("level_usr")%>
                </span>
              </div>
              <img class="pokemon" src="<%=request.getAttribute("img_usr")%>" alt="A gif from pokemon usr" />
            </div>
        </div>

<div class="box">
  <div id = "message" class="message">
    Que hara ${nombre_pokemon_usr}?
  </div>

  
  <div class = "continue">
    <button id="btn_continuar" onclick = "compPokemon()">Continue</button>
  </div>      
        
       