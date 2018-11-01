package views;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import javax.swing.JLabel;
import java.awt.event.ActionListener;
import java.sql.SQLException;
import java.awt.event.ActionEvent;

public class inicialProduto extends JFrame {
	
	private JPanel contentPane;

	/**
	 * Launch the application.
	 * @throws SQLException 
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					inicialProduto frame = new inicialProduto();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public inicialProduto() {
		setTitle("Produto");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JButton btnNewButton = new JButton("Adicionar");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				addProduto add= new addProduto();
				add.setVisible(true);
			}
		});
		btnNewButton.setBounds(39, 51, 89, 23);
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("Procurar");
		btnNewButton_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String[] produtos=new String[] {"produto1", "produto2"};
				searchProd search= new searchProd(produtos);
				search.setVisible(true);
				
			}
		});
		btnNewButton_1.setBounds(293, 51, 89, 23);
		contentPane.add(btnNewButton_1);
		
		JButton btnVoltar = new JButton("Cancelar");
		btnVoltar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				try {
					BarBarDriver.myConn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				dispose();
			}
		});
		btnVoltar.setBounds(335, 227, 89, 23);
		contentPane.add(btnVoltar);
		
		JButton btnNewButton_2 = new JButton("Criar Tabela");
		btnNewButton_2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				CriarTabelas create = null;
				try {
					create = new CriarTabelas();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				create.setVisible(true);
			}
		});
		btnNewButton_2.setBounds(150, 80, 120, 25);
		contentPane.add(btnNewButton_2);
		
		JLabel lblProduto = new JLabel("O que voc\u00EA deseja?");
		lblProduto.setBounds(163, 24, 138, 16);
		contentPane.add(lblProduto);
	}

}