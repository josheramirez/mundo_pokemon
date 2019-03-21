/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import java.sql.*;
/**
 *
 * @author KATHY
 */
    public class Connection_DB {
    
    private String userName="root";
    private String password="";
    private String host="localhost";
    private String port="3306";
    private String database="juego_pokemon";
    private String className="com.mysql.jdbc.Driver";
    private String url="jdbc:mysql://"+host+":"+port+"/"+database+"";
   
    private Connection cnx;
        
    public Connection_DB(){    
                
        try{
            Class.forName(className);
            cnx=DriverManager.getConnection(url, userName, password);
            System.out.println("Conexión Satisfactoria");
            
        }catch (ClassNotFoundException e){         
            System.out.println("Error en conexión: "+e);
        }catch (SQLException e){
            System.err.println("Error en conexión: "+e);                    
        }
    }
    
    public Connection getConnection_DB (){
        return cnx;
    }

    public static void main(String[] args) {
              
         Connection_DB cnx=new Connection_DB();
                         
    }

    

}
