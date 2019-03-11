/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ventas;

//import java.sql.*;

/**
 *
 * @author DarvisTrillosAriza
 */
public class Ventas {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        // Instancias la clase que hemos creado anteriormente
        
      /*  try {
            ConexionMySQL SQL = new ConexionMySQL();
// Llamas al método que tiene la clase y te devuelve una conexión
            Connection conne = SQL.conectarMySQL();
// Query que usarás para hacer lo que necesites
            String sSQL = "select * from productos";

            Statement statement = conne.createStatement();
            ResultSet rs = statement.executeQuery(sSQL);
            while (rs.next()) {
                String codigo = rs.getString("codigo");
                String nombre = rs.getString("nombre");
                double precio = rs.getDouble("precio");
                int poriva = rs.getInt("poriva");

                System.out.println(String.format("%s, %s %s, %s", codigo, nombre, precio, poriva));
            }

            rs.close();
            statement.close();
            conne.close();*/
            frmPrinc fp = new frmPrinc();
            fp.setVisible(true);
       /* } catch (SQLException ex) {
            System.out.println(ex);
        }*/

    }

}
