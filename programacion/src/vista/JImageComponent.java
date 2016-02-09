package vista;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.JComponent;
@SuppressWarnings("serial")
public class JImageComponent extends JComponent {
private BufferedImage img;
	public JImageComponent() {
		try {
			img= ImageIO.read(new File("img/portada.png"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public void paint(Graphics g){
		g.drawImage(img, 0, 0, null);
	}

}
