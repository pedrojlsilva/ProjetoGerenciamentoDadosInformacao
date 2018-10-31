package views;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.sql.Driver;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

public class CriarTabelas extends JFrame {
	
	private JPanel contentPane;
	private JTextField nomeTabela;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					CriarTabelas frame = new CriarTabelas();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame
	 */
	public CriarTabelas() throws SQLException {
		setTitle("Criar Tabela");
		setBounds(100, 100, 450, 300);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JButton btnVoltar = new JButton("Cancelar");
		btnVoltar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
			}
		});
		btnVoltar.setBounds(335, 227, 89, 23);
		contentPane.add(btnVoltar);
		
		JLabel lblNome = new JLabel("Nome:");
		lblNome.setBounds(36, 26, 46, 14);
		contentPane.add(lblNome);
		
		nomeTabela = new JTextField();
		nomeTabela.setBounds(36, 42, 191, 20);
		contentPane.add(nomeTabela);
		nomeTabela.setColumns(10);
		nomeTabela.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
					try {
						BarBarDriver.OracleConnection();
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}

				try {
					BarBarDriver.dropC("produtos");
					BarBarDriver.CreateTable(nomeTabela.getText());
					BarBarDriver.CreateBlobColumn("produtos", "imagem");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				try {
					BarBarDriver.myConn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			});
	}

}
