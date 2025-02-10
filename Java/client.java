import java.net.*;
import java.io.*;
import java.util.*;
public class client{
    public static void main(String[] args) throws IOException{
        Socket sn = new Socket("localhost", 5000);
        Scanner input = new Scanner(System.in);
        boolean con = true;

        while (con) {
            PrintWriter pr = new PrintWriter(sn.getOutputStream());
            System.out.println("Enter the Value : ");
            String value = input.next();
            pr.println(value);
            pr.flush();       
            
            InputStreamReader in = new InputStreamReader(sn.getInputStream());
            BufferedReader bf = new BufferedReader(in);        
            String str = bf.readLine();
            System.out.println("server : "+str);

            System.out.println("If You Need Communicate again : ");
            con = input.nextBoolean();
        }
    }
}