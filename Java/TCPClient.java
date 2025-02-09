import java.io.*;
import java.net.*;

public class TCPClient {
    public static void main(String args[]) throws IOException {
            String fromServer;
            String toServer;
            Socket clientSocket = new Socket("localhost", 5000);
            System.out.println("Connected to server on port: " + clientSocket.getPort());

            PrintWriter outToServer = new PrintWriter(clientSocket.getOutputStream(), true);
            BufferedReader inFromServer = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));

            InputStreamReader in = new InputStreamReader(System.in);            
            BufferedReader inFromUser = new BufferedReader(in);
            
            while (true) {
                fromServer = inFromServer.readLine();
                if (fromServer.equalsIgnoreCase("Q")) {
                    System.out.println("Server requested to terminate the connection.");
                    clientSocket.close();
                    break;
                } else {
                    System.out.println("Received: " + fromServer);
                    System.out.print("Send (Type Q or q to quit): ");
                    toServer = inFromUser.readLine();
                    
                    // Debugging statement to check if input is read correctly
                    System.out.println("Debug: Input read from user: " + toServer);
                    
                    if (toServer.equalsIgnoreCase("Q")) {
                        outToServer.println(toServer);
                        System.out.println("Connection terminated by client.");
                        clientSocket.close();
                        break;
                    } else {
                        outToServer.println(toServer);
                        
                        // Debugging statement to check if data is sent to server
                        System.out.println("Debug: Data sent to server: " + toServer);
                    }
                }
            }
    }
}