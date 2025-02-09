import java.io.*;
import java.net.*;

public class TCPServer {
    public static void main(String args[]) throws IOException{
        
        String FromClient, ToClient;
        ServerSocket server = new ServerSocket(5000);
        System.out.println("TCP Server waiting for client on port 5000");
        while (true) {
            Socket connected = server.accept();
            System.out.println("The client " + connected.getInetAddress() + ":" + connected.getPort() + " is connected");

            BufferedReader inFromClient = new BufferedReader(new InputStreamReader(connected.getInputStream()));
            PrintWriter outToClient = new PrintWriter(connected.getOutputStream(), true);

            while (true) {
                FromClient = inFromClient.readLine();
                if (FromClient == null) {
                    break; 
                }
                System.out.println("Received from client: " + FromClient);

                if (FromClient.equals("Q") || FromClient.equals("q")) {
                    outToClient.println("Q"); 
                    System.out.println("Closing connection with client " + connected.getInetAddress() + ":" + connected.getPort());
                    connected.close();
                    break;
                }

                System.out.print("Send to client: ");
                BufferedReader inFromUser = new BufferedReader(new InputStreamReader(System.in));
                ToClient = inFromUser.readLine();
                outToClient.println(ToClient);

                if (ToClient.equals("Q") || ToClient.equals("q")) {
                    System.out.println("Server closing connection");
                    connected.close();
                    break;
                }
            }
        }
    }
}
