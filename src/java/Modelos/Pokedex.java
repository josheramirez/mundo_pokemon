/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

public class Pokedex {
    public int id;
    public String nombre;
    public String alias;
    public int fk_pokemon;
    public int fk_personaje;
    public int nivel;
    public int salud;
    public boolean estado;
    
    public String imagen;
    public String ataque_1;
    public String ataque_2;
    public String ataque_3;
    public String ataque_4;
    public String gif_front;
    public String gif_back;
    
    public String[] getAtaques(){
        String[] ataques=new String[4];
        ataques[0]=ataque_1;
        ataques[1]=ataque_2;
        ataques[2]=ataque_3;
        ataques[3]=ataque_4;
        return ataques;
    }
}
