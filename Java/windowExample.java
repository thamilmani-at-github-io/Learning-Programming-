import java.awt.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
public class WindowExample extends Frame{
    public WindowExample(){
        setTitle("AWT Window Example ");
        setSize(400,300);
        setLayout(new FlowLayout());

        Label label = new Label("Close the Windows to Exit ");
        add(label);

        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e){
                dispose();
                System.exit(ABORT);
            }
        });
        setVisible(true);
    }
    public static void main(String args[]){
        new WindowExample();
    }
}