package vista;

import java.awt.EventQueue;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextPane;

import controlador.miControlador;

import java.awt.Color;

public class VistaSimple {
	private JTextPane textPane;
	private JFrame frmMantengaLaFe;
	private JPasswordField passwordField;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					VistaSimple window = new VistaSimple();
					window.frmMantengaLaFe.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public VistaSimple() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	
	private void initialize() {
		
		frmMantengaLaFe = new JFrame();
		frmMantengaLaFe.setBackground(new Color(0, 128, 0));
		
		//frmMantengaLaFe.getGraphics().drawImage(img02, 0, 0, null);		
		frmMantengaLaFe.setIconImage(Toolkit.getDefaultToolkit().getImage(VistaSimple.class.getResource("/com/sun/javafx/webkit/prism/resources/mediaPlayDisabled.png")));
		frmMantengaLaFe.setTitle("Supermercado \u201CMantenga la Fe que pasar\u00E1\u201D");
		frmMantengaLaFe.setBounds(100, 100, 450, 324);
		frmMantengaLaFe.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frmMantengaLaFe.getContentPane().setLayout(null);
		
		JButton btnNewButton = new JButton("Iniciar");
		btnNewButton.addActionListener(new ActionListener() {
			@SuppressWarnings("deprecation")
			public void actionPerformed(ActionEvent arg0) {
				miControlador controlador = new miControlador();
				try {
					controlador.login(textPane.getText(), passwordField.getText());
				
				}
				catch(Exception e){
					JOptionPane.showMessageDialog(frmMantengaLaFe, "¡Usuario o clave erronea!, favor volver a comprobar");
					e.printStackTrace();
				}
			}
		});
		btnNewButton.setBounds(335, 73, 89, 23);
		frmMantengaLaFe.getContentPane().add(btnNewButton);
		
		textPane = new JTextPane();
		textPane.setBounds(288, 11, 136, 20);
		frmMantengaLaFe.getContentPane().add(textPane);
		
		passwordField = new JPasswordField();
		passwordField.setBounds(288, 42, 136, 20);
		frmMantengaLaFe.getContentPane().add(passwordField);
		
		JLabel lblBienvenido = new JLabel("Bienvenido");
		lblBienvenido.setBounds(44, 11, 73, 14);
		frmMantengaLaFe.getContentPane().add(lblBienvenido);
		
		JLabel lblNewLabel = new JLabel("Usuario");
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 23));
		lblNewLabel.setBounds(199, 11, 75, 23);
		frmMantengaLaFe.getContentPane().add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("contrase\u00F1a");
		lblNewLabel_1.setFont(new Font("Tahoma", Font.PLAIN, 23));
		lblNewLabel_1.setBounds(166, 42, 112, 23);
		frmMantengaLaFe.getContentPane().add(lblNewLabel_1);
		
		JPanel panel = new JPanel();
		panel.setBounds(0, -16, 450, 340);
		frmMantengaLaFe.getContentPane().add(panel);
		
		
		ImageIcon imgThisImg = new ImageIcon("portada.png");
		JLabel lblNewLabel_2 = new JLabel("");
		lblNewLabel_2.setIcon(imgThisImg);
		panel.add(lblNewLabel_2);
		
		//jLabel2.setIcon(imgThisImg);
		//frmMantengaLaFe.add(new JLabel(new ImageIcon("img/portada.png")));
		//frmMantengaLaFe.pack();
		
	}
}
