import java.io.*;
import java.net.*;
class InetAddressTest {
    public static void main(String args[]) {
        try{  
            InetAddress address = InetAddress.getLocalHost();
            System.out.println(address);

            address = InetAddress.getByName("www.google.com");
            System.out.println(address);

            InetAddress sw[] = InetAddress.getAllByName("www.flipkart.com");
            for(int i=0;i<sw.length;i++){
                System.out.println(sw[i]);
            }

            address = InetAddress.getLoopbackAddress();
            System.out.println(address);
        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}