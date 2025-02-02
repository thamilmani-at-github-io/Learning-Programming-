import java.io.*;
import java.net.*;

class TCPClient{
    public static void main(String args[]){
        try{
            String fromServer;
            String ToServer;
            Socket clientSocket = new Socket("192.168.3.103",5000);
            System.out.println(clientSocket.getPort());
            BufferedReader inFromUser = new BufferedReader(new InputStreamReader(System.in));

            PrintWriter outtoserver = new PrintWriter(clientSocket.getOutputStream(),true);
            BufferedReader inFromServer = new BufferedReader
                (new InputStreamReader(clientSocket.getInputStream()));
            
            while (true) {
                fromServer = inFromServer.readLine();
                if(fromServer.equals("Q")||fromServer.equals("q")){
                    clientSocket.close();
                    break;
                }
                else{
                    System.out.println("Received : "+ fromServer);
                    System.out.println("send (Type Q or q ) : ");

                    ToServer = inFromUser.readLine();
                    if(ToServer.equals("Q")||ToServer.equals("q")){
                        outtoserver.println(ToServer);
                        clientSocket.close();
                        break;
                    }
                    else{
                        outtoserver.println(ToServer);
                    }
                }
            }
        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}