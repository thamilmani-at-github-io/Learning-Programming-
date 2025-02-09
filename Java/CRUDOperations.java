import java.util.Scanner;
import java.sql.*;
class CRUDOperations{
    public static void main(String args[]){
        try{           
            Scanner input = new Scanner(System.in);
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:Productions1", "", "") ;
            int choice;
            String sqls;
            String RegNo,Name,Dep;
            do{
                System.out.println("\n1.Insert 2.Update 3.Delete 4.View 5.Exit\nEnter Your Choice");
                choice = input.nextInt();
                switch (choice){
                    case 1:
                        System.out.println("\nEnter the New Student RegNo : ");
                        RegNo = input.next();
                        System.out.println("Enter the Student Name : ");
                        Name = input.next();
                        System.out.println("Enter the Department : ");
                        Dep = input.next();
                        Statement stmt = con.createStatement();
                        sqls = "Insert into Table1(Reg_No,Std_Name,Department) values('"+RegNo+"','"+Name+"','"+Dep+"')";
                        stmt.executeUpdate(sqls);
                        System.out.println("Inserted Record Successfully ....");
                        stmt.close();
                    break;
                    case 2:
                        System.out.println("\nEnter the Student RegNo To Be Updated : ");
                        RegNo = input.next();
                        System.out.println("Enter the Student Name : ");
                        Name = input.next();
                        System.out.println("Enter the Department : ");
                        Dep = input.next();
                        Statement stmt2 = con.createStatement();
                        sqls = "Update Table1 set Std_Name = '"+Name+"',Department = '"+Dep+"' where Reg_No = '"+RegNo+"'";
                        stmt2.executeUpdate(sqls);
                        System.out.println("Update '"+RegNo+"' Student Record Successfully ...");
                        stmt2.close();
                    break;
                    case 3:
                        System.out.println("\nEnter the Student RegNo To Be Deleted : ");
                        RegNo = input.next();
                        Statement stmt3 = con.createStatement();
                        sqls = "delete from Table1 where Reg_No = '"+RegNo+"' ";
                        stmt3.executeUpdate(sqls);
                        System.out.println("Deleted '"+RegNo+"' Record Successfully ... ");
                        stmt3.close();
                    break;
                    case 4:
                        Statement stmt1 = con.createStatement();
                        System.out.println("If You what to display All Student Details (True/False ): ");
                        boolean display = input.nextBoolean();
                        if(display == true){
                            ResultSet rs = stmt1.executeQuery("select ID,Reg_No,Std_Name,Department from Table1");
                            while (rs.next()) {
                                System.out.println("Student Id Is : "+rs.getString("ID"));
                                System.out.println("Student Reg_No Is : "+rs.getString("Reg_No"));
                                System.out.println("Student Name Is : "+rs.getString("Std_Name"));
                                System.out.println("Student Department Is : "+rs.getString("Department"));
                                System.out.println();
                            }
                        }
                        else{
                            System.out.println("\nEnter the Student RegNo To Be Viewed : ");
                            RegNo = input.next();
                            ResultSet rs = stmt1.executeQuery("select ID,Reg_No,Std_Name,Department from Table1 where Reg_No = '"+RegNo+"'");
                            while (rs.next()) {
                                System.out.println("Student Id Is : "+rs.getString("ID"));
                                System.out.println("Student Reg_No Is : "+rs.getString("Reg_No"));
                                System.out.println("Student Name Is : "+rs.getString("Std_Name"));
                                System.out.println("Student Department Is : "+rs.getString("Department"));
                                System.out.println();
                            }
                        }
                        stmt1.close();
                    break;
                    case 5:
                        System.out.println("Your Console Application is Closed ...");
                        System.exit(0);
                    break;
                    default:
                        System.out.println("Please choice the valid choice ...");
                        break;
                }
            }while(choice!=5);
            con.close();  
        }
        catch(Exception ex){
            System.out.println(ex);
        }
    }
}