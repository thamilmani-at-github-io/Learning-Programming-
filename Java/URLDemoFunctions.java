import java.io.*;
import java.net.*;

class URLDemoFunctions{
    public static void main(String args[]) {
        try{
            URL hp = new URL("https://srmvcas.edu.in/");
            System.out.println("Protocol : "+hp.getProtocol());
            System.out.println("Port : "+hp.getPort());
            System.out.println("Host : "+hp.getHost());
            System.out.println("File : "+hp.getFile());
            System.out.println("Path : "+hp.getPath());
            System.out.println("DefaultPort : "+hp.getDefaultPort());
            System.out.println("Authority : "+hp.getAuthority());
        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }        
    }
}