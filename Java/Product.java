import java.sql.*;
class Product{
    public static void main(String args[]){
        try{
           
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:Productions1", "", "") ;
            Statement stmt = con.createStatement();
            //ResultSet rs = stmt.executeQuery("select ID,Reg_No,Std_Name,Department from Table1 where ID = 3");
            //ResultSet rs = stmt.executeQuery("select ID,Reg_No,Std_Name,Department from Table1 where Reg_No = '21UCA049' ");
            ResultSet rs = stmt.executeQuery("select ID,Reg_No,Std_Name,Department from Table1");
            while (rs.next()) {
                System.out.println("Student Id Is : "+rs.getString("ID"));
                System.out.println("Student Reg_No Is : "+rs.getString("Reg_No"));
                System.out.println("Student Name Is : "+rs.getString("Std_Name"));
                System.out.println("Student Department Is : "+rs.getString("Department"));
                System.out.println();
            }
            stmt.close();
            con.close();  
        }
        catch(Exception ex){
            System.out.println(ex);
        }
    }
}