import java.io.*;
import java.net.*;

class TCPClient {
    public static void main(String args[]) {
        try {
            String fromServer;
            String toServer;
            Socket clientSocket = new Socket("192.168.3.103", 5000);
            System.out.println("Connected to server on port: " + clientSocket.getPort());
            
            BufferedReader inFromUser = new BufferedReader(new InputStreamReader(System.in));
            PrintWriter outToServer = new PrintWriter(clientSocket.getOutputStream(), true);
            BufferedReader inFromServer = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
            
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
        } catch (IOException ex) {
            System.err.println("Error: " + ex.getMessage());
        }
    }
}