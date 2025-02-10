import java.net.*;
import java.io.*;
import java.util.*;
public class server{
    public static void main(String[] args) throws IOException{        
        ServerSocket ss = new ServerSocket(5000);
        Scanner input = new Scanner(System.in);
        Socket s = ss.accept();
        System.out.println("Client Connected ");

        boolean con = true;

        while (con) {
            InputStreamReader in = new InputStreamReader(s.getInputStream());
            BufferedReader bf = new BufferedReader(in);        
            String str = bf.readLine();
            System.out.println("client : "+str);

            PrintWriter pw = new PrintWriter(s.getOutputStream());
            System.out.println("Enter the Value : ");
            String value = input.next();
            pw.println(value);
            pw.flush();

            System.out.println("If You Need Communicate again : ");
            con = input.nextBoolean();
        }
    }
}