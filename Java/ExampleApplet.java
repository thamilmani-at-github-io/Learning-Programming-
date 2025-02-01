import java.awt.*;
import java.applet.*;
/* <applet code=ExampleApplet width=500 height=300></applet>*/
public class ExampleApplet extends Applet{
    public void paint(Graphics g){
        setBackground(Color.yellow);
        g.drawString("Smile Please ..", 100, 100);
        g.drawString("Smile ..", 300, 100);
        g.drawString("Please ..", 400, 100);
    }
}