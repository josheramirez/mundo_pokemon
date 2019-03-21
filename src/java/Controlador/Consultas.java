/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import Modelos.Medalla;
import Modelos.Personaje;
import Modelos.Pokedex;
import Modelos.Pokemon;
import Modelos.Usuario;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author KATHY
 */
public class Consultas extends Connection_DB{

    
    public boolean autenticacion (String nombre, String contraseña){
    PreparedStatement pSta = null;
    ResultSet rs = null;
    
        try{
            String Consulta = "select * from usuarios where nombre=? and contraseña=?";
            pSta=getConnection_DB().prepareStatement(Consulta);
            pSta.setString(1, nombre);
            pSta.setString(2, contraseña);
            rs=pSta.executeQuery();
            
            if(rs.absolute(1)){
                return true;
                
            }
            
            
        }catch (Exception e){         
            System.out.println("Error en conexión: "+e);
            
        }finally{
            
            try{
                if (getConnection_DB()!=null){
                    getConnection_DB().close();
            } 
                if (pSta!=null){
                    pSta.close();
                }
                if(rs!=null)
                    rs.close();
             
            }catch (Exception e){         
            System.out.println("Error en conexión: "+e);                     
                      
            }
            
        }
        
        return false;
        
       }
    
    
        public boolean registrar (String nombre, String contraseña, String email, String telefono){
            
            PreparedStatement pSta=null;
            
            try{ 
                String Consulta="insert into usuarios (nombre, contraseña, email, telefono) values (?, ?, ?, ?)";
                pSta =getConnection_DB().prepareStatement(Consulta); 
                pSta.setString(1, nombre);
                pSta.setString(2, contraseña);
                pSta.setString(3, email);
                pSta.setString(4, telefono);
                
                if(pSta.executeUpdate()==1){
                    return true;
                }
                
            }catch (Exception e){
               System.err.println("Error en conexion: "+e); 
            
            }finally{
                try{
                    if(getConnection_DB()!=null) 
                        getConnection_DB().close();
                    if(pSta !=null) 
                        pSta.close();
                    
                }catch(Exception e){
                    System.out.println("Error en conexion: "+e);
            }                   
            
            }
            return false;
        }
        
         public Personaje getPersonaje(String nombre,String contraseña){
            
            PreparedStatement pSta = null;
            ResultSet rs = null;
            Personaje personaje=new Personaje();
            
            try{ 
             
                String Consulta="select * from personajes inner join usuarios on personajes.fk_usuario=usuarios.id where  usuarios.nombre=? and usuarios.contraseña=?";
                pSta=getConnection_DB().prepareStatement(Consulta);
                pSta.setString(1, nombre);
                pSta.setString(2, contraseña);
                
                rs=pSta.executeQuery();
                
                
                if(rs.absolute(1)){
                personaje.id=rs.getInt("id");
                personaje.nivel=rs.getInt("nivel");
                personaje.usuario=rs.getInt("fk_usuario");
                personaje.nombre=rs.getString("nombre");
                return personaje;
                
                }
                
            }catch (Exception e){
               System.err.println("Error en conexion: "+e); 
            
            }finally{
                try{
                    if(getConnection_DB()!=null) 
                        getConnection_DB().close();
                    if(pSta !=null) 
                        pSta.close();
                    
                }catch(Exception e){
                    System.out.println("Error en conexion: "+e);
            }                   
            
            }
            return personaje;
        }
         
         
        public Usuario getUsuario(String nombre, String contraseña){
            
            PreparedStatement pSta = null;
            ResultSet rs = null;
            Usuario usuario=new Usuario();
            
            try{ 
                String Consulta="select * from usuarios where  usuarios.nombre=? and usuarios.contraseña=?";
                pSta=getConnection_DB().prepareStatement(Consulta);
                pSta.setString(1, nombre);
                pSta.setString(2, contraseña);
                rs=pSta.executeQuery();
                
                if(rs.absolute(1)){
                    usuario.id=rs.getInt("id");
                    usuario.nombre=rs.getString("nombre");
                    usuario.contraseña=rs.getString("contraseña");
                    usuario.email=rs.getString("email");
                    usuario.fecha_creacion=rs.getString("fecha_creacion");
                    return usuario;
                }
                
            }catch (Exception e){
               System.err.println("Error en conexion: "+e); 
            }finally{
                try{
                    if(getConnection_DB()!=null) 
                        getConnection_DB().close();
                    if(pSta !=null) 
                        pSta.close();
                    
                }catch(Exception e){
                    System.out.println("Error en conexion: "+e);
            }                   
            
            }
            return usuario;
        }
        
        public boolean crearPersonaje(String nombre,int fk_usuario,String genero,String raza,String equipo, String COjos, String CPelo){
		PreparedStatement P = null;
		try{
			String consulta = "insert into personajes (nombre,fk_usuario,genero,raza,equipo,color_ojos,color_pelo) values (?,?,?,?,?,?,?)";
			P =getConnection_DB().prepareStatement(consulta);
			P.setString(1, nombre);
			P.setInt(2, fk_usuario);
			P.setString(3, genero);
			P.setString(4, raza);
			P.setString(5, equipo);
			P.setString(6, COjos);
			P.setString(7, CPelo);
			if(P.executeUpdate() == 1){
                            return true;
			}
		}
		catch(SQLException e){
			System.err.println("Error: "+e);
		}
		finally{
			try{
				if(getConnection_DB() != null) getConnection_DB().close();
				if(P != null) P.close();
			}
			catch(SQLException e){
			}
		}
		return false;
	}
        
        public Personaje cargarPersonaje(int id){
            PreparedStatement PS = null;
            ResultSet rs = null;
            Personaje per=new Personaje();
            try{
                String consulta = "select * from personajes inner join usuarios on personajes.fk_usuario=usuarios.id where usuarios.id=?";
                PS = getConnection_DB().prepareStatement(consulta);
                PS.setInt(1, id);
                rs = PS.executeQuery();
                if(rs.absolute(1)){
                    
                   // personajes.nombre, personajes.nivel, personajes.genero, personajes.raza, personajes.equipo, personajes.color_ojos, personajes.color_pelo, personajes.medalla1, personajes.medalla2, personajes.medalla3, personajes.pokemoneda, personajes.experiencia
                    per.id=rs.getInt("id");
                    per.nombre=rs.getString("nombre");
                    per.nivel=rs.getInt("nivel");
                    per.genero=rs.getString("genero");
                    per.raza=rs.getString("raza");
                    per.equipo=rs.getString("equipo");
                    per.color_ojos=rs.getString("color_ojos");
                    per.color_pelo=rs.getString("color_pelo");
                    per.medalla_1=rs.getString("medalla_1");
                    per.medalla_2=rs.getString("medalla_2");
                    per.medalla_3=rs.getString("medalla_3");
                    per.pokemonedas=rs.getInt("pokemonedas");
                    per.experiencia=rs.getInt("experiencia"); 
                    
                    return per;
                }    
            }
            catch(SQLException e){
			System.err.println("Error: "+e);
            }
            finally{
                    try{
                        if(getConnection_DB() != null) {getConnection_DB().close();}
                        if(PS!= null) {PS.close();} 
                    }
                    catch(SQLException e){
                    }
            }
            return per;
	}
        
            public ArrayList<Pokedex> cargarPokemons(int usuario_id){
            PreparedStatement PS = null;
            ResultSet rs = null;
            ArrayList<Pokedex> lista_pokemon=new ArrayList<Pokedex>();
            
            try{
                String consulta = "select * from pokedexs inner join personajes on pokedexs.fk_personaje = personajes.id inner join usuarios on personajes.fk_usuario = usuarios.id inner join pokemons on pokedexs.fk_pokemon = pokemons.id where usuarios.id = ?";
                PS = getConnection_DB().prepareStatement(consulta);
                PS.setInt(1, usuario_id);
                rs = PS.executeQuery();
                
                while(rs.next()){
                    Pokedex pokemon=new Pokedex();
                    pokemon.id=rs.getInt("id");
                    pokemon.alias=rs.getString("alias");
                    pokemon.nivel=rs.getInt("nivel");
                    pokemon.fk_pokemon=rs.getInt("fk_pokemon");
                    pokemon.fk_personaje=rs.getInt("fk_personaje");
                    pokemon.salud=rs.getInt("salud");
                    pokemon.estado=rs.getBoolean("estado");
                    pokemon.imagen=rs.getString("imagen");
                    pokemon.nombre=rs.getString("name");
                    
                    lista_pokemon.add(pokemon);
                }
                
            }
            catch(SQLException e){
			System.err.println("Error: "+e);
            }
            finally{
                    try{
                        if(getConnection_DB() != null) {getConnection_DB().close();}
                        if(PS!= null) {PS.close();} 
                    }
                    catch(SQLException e){
                    }
            }
            return lista_pokemon;
            }
           
            
            public ArrayList<Pokemon> cargarPokemonAll(){
            PreparedStatement PS = null;
            ResultSet rs = null;
            ArrayList<Pokemon> lista_pokemon=new ArrayList<Pokemon>();
            
            try{
                String consulta = "select * from pokemons";
                PS = getConnection_DB().prepareStatement(consulta);
                rs = PS.executeQuery();

                while(rs.next()){
                    Pokemon pokemon=new Pokemon();
                    pokemon.id=rs.getInt("id");
                    pokemon.imagen=rs.getString("imagen");
                    pokemon.pokedex=rs.getInt("pokedex");
                    pokemon.nombre=rs.getString("name");
                    pokemon.salud=rs.getInt("hp");
                    pokemon.ataque=rs.getInt("attack");
                    pokemon.ataque_especial=rs.getInt("special_attack");
                    pokemon.defensa_especial=rs.getInt("special_defence");
                    pokemon.defensa=rs.getInt("defence");
                    pokemon.tipo_1=rs.getString("type_1");
                    pokemon.tipo_2=rs.getString("type_2");
                    lista_pokemon.add(pokemon);
                }
                return lista_pokemon;
            }
            catch(SQLException e){
			System.err.println("Error: "+e);
            }
            finally{
                    try{
                        if(getConnection_DB() != null) {getConnection_DB().close();}
                        if(PS!= null) {PS.close();} 
                    }
                    catch(SQLException e){
                    }
            }
            return lista_pokemon;
            }
            
            public void guardarPokemon(int pokemon_id, int personaje_id){
                PreparedStatement pSta=null;
                try{ 
                    String Consulta="insert into pokedexs (fk_pokemon, fk_personaje, salud, estado) values (?, ?, (SELECT hp FROM pokemons WHERE id=?), ?)";
                    pSta =getConnection_DB().prepareStatement(Consulta); 
                    pSta.setInt(1, pokemon_id);
                    pSta.setInt(2, personaje_id);
                    pSta.setInt(3, pokemon_id);
                    pSta.setInt(4, 1);

                    if(pSta.executeUpdate()==1){
                         System.out.println("ingresado");
                    }
                     if(pSta !=null) pSta.close();
                
                }catch (Exception e){
                    System.err.println("Error en conexion: "+e); 
                }
            }
            
            public Pokedex cargarPokemon(String pokemon_id){
                PreparedStatement ps=null;
                ResultSet rs=null;
                Pokedex pokemon=new Pokedex();
                try {
                    String consulta="select\n" +
                    "pokedexs.id,pokedexs.salud,pokedexs.nivel,\n" +
                    "pokemons.name,pokemons.gif_front,pokemons.gif_back,\n" +
                    "ataque_1.name as a1_name, \n" +
                    "ataque_2.name as a2_name, \n" +
                    "ataque_3.name as a3_name, \n" +
                    "ataque_4.name as a4_name\n" +
                    "from pokedexs\n" +
                    "inner join pokemons on pokedexs.fk_pokemon=pokemons.id\n" +
                    "inner join pokemons_ataques on pokemons_ataques.fk_pokedexs=pokedexs.id\n" +
                    "inner join ataques as ataque_1 on ataque_1.id=pokemons_ataques.fk_ataque_1\n" +
                    "inner join ataques as ataque_2 on ataque_2.id=pokemons_ataques.fk_ataque_2\n" +
                    "inner join ataques as ataque_3 on ataque_3.id=pokemons_ataques.fk_ataque_3\n" +
                    "inner join ataques as ataque_4 on ataque_4.id=pokemons_ataques.fk_ataque_4\n" +
                    "where pokedexs.id=?";
                    ps=getConnection_DB().prepareStatement(consulta);
                    ps.setString(1, pokemon_id);
                    rs = ps.executeQuery();
                    if(rs.absolute(1)){
                        pokemon.id=rs.getInt("id");
                        pokemon.nombre=rs.getString("name");
                        pokemon.gif_front=rs.getString("gif_front");
                        pokemon.gif_back=rs.getString("gif_back");
                        pokemon.salud=rs.getInt("salud");
                        pokemon.nivel=rs.getInt("nivel");
                        pokemon.ataque_1=rs.getString("a1_name");
                        pokemon.ataque_2=rs.getString("a2_name");
                        pokemon.ataque_3=rs.getString("a3_name");
                        pokemon.ataque_4=rs.getString("a4_name");
                    }
                    
                } catch (Exception e) {
                }
                
                return pokemon;
            }
            
            public void terminarConeccion(){
                    try{
                        if(getConnection_DB()!=null)getConnection_DB().close();
                    }catch(Exception e){
                        System.out.println("Error en conexion: "+e);
                    }             
            }
            
          public ArrayList<Medalla> cargarMedallas(int personaje_id){
            PreparedStatement PS = null;
            ResultSet rs = null;
            ArrayList<Medalla> lista_medallas=new ArrayList<Medalla>();
            
            try{
                String consulta = "select * from medallas_personajes inner join medallas on medallas_personajes.fk_medalla=medallas.id where fk_personaje=?";
                PS = getConnection_DB().prepareStatement(consulta);
                PS.setInt(1, personaje_id);
                rs = PS.executeQuery();

                while(rs.next()){
                    Medalla medalla=new Medalla();
                    medalla.id=rs.getInt("id");
                    medalla.nombre=rs.getString("nombre");
                    medalla.imagen=rs.getString("imagen");
                    lista_medallas.add(medalla);
                }
               
            }
            catch(SQLException e){
			System.err.println("Error: "+e);
            }
            finally{
                    try{
                        if(getConnection_DB() != null) {getConnection_DB().close();}
                        if(PS!= null) {PS.close();} 
                    }
                    catch(SQLException e){
                    }
            }
            return lista_medallas;
            }
        public static void main(String[] args){

                Consultas co=new Consultas();
                //Consultas co2=new Consultas();
               //Personaje per=co.getPersonaje("joshe", "1234");
               //System.out.println(per.nombre);
               
            
               ArrayList<Pokedex> lista=co.cargarPokemons(2);
               
               //co.guardarPokemon(32, 1);
               System.out.println(lista.size());
                //System.out.println(co2.cargarMedallas(1).size());
               //System.out.println(co.cargarPokemonAll().size());
        }
         
}
