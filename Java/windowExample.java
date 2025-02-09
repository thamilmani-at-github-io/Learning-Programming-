import java.awt.*;
import java.awt.event.*;
public class windowExample extends Frame{
    windowExample(){
        setTitle("AWT Window Example");
        setSize(400,400);
        setLayout(new FlowLayout());
        Label label = new Label("close the window to exit");
        add(label);
        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e){
                dispose();
                System.exit(0);
            }
        });
        setVisible(true);
    }
    public static void main(String args[]){
        new windowExample();
    }
}