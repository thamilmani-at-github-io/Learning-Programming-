import java.awt.*;
import java.applet.*;
/*<applet code="myapplet.java" width=500 height=500></applet>*/
public class myapplet extends Applet{
    TextField txt1,txt2;

    public void init(){
        txt1 = new TextField(10);
        txt2 = new TextField(10);
        add(txt1);
        add(txt2);
        txt1.setText("");
        txt2.setText("");
    }
    
    public void paint(Graphics g){
        int x,y,z;
        String s1,s2,s;
        try{
            s1 = txt1.getText();
            x = Integer.parseInt(s1);
            s2 = txt2.getText();
            y = Integer.parseInt(s2);
            z = x + y;
            s = String.valueOf(z);
            g.drawString("The Sum Of Value Is : ", 10, 80);
            g.drawString(s, 125, 80);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
    public boolean action(Event even,Object obj){
        repaint();
        return true;
    }
}