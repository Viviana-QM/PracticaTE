
package com.emergentes.utiles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {
    static String driver ="com.mysql.jdbc.Driver";
 static String url="jdbc:mysql://localhost:3306/bd_agenda";
 static String usuario = "root";
 static String password="";
 
 public Connection conn=null;
    
 
 public ConexionBD(){
    try{
        Class.forName(driver);
        conn=DriverManager.getConnection(url,usuario,password);
    
         if(conn!= null){
            System.out.println("conexion ok");
         }
    }catch (ClassNotFoundException e){
        System.out.println("Falta de driver" +e.getMessage());
    }catch(SQLException e){
        System.out.println("Error al abrir la BD"+e.getMessage());
    }
  }

  public Connection conectar(){
    return conn;
  }
 
  
  public void desconectar(){

     try{
        conn.close();

     } catch (SQLException ex){

         System.out.println("Error al cerra la BD"+ex.getMessage());
    }
  }
   public static void main(String[] args){
      ConexionBD conn = new ConexionBD();
  }
  
}
