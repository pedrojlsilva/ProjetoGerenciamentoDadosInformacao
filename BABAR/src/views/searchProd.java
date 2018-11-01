package views;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Vector;
import java.awt.event.ActionEvent;
import javax.swing.JLabel;
import javax.swing.JComboBox;
import javax.swing.DefaultComboBoxModel;
import javax.swing.ImageIcon;

import java.awt.Color;
import java.awt.SystemColor;
import javax.swing.JTextField;

public class searchProd extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField textNome;
	private JTextField textCompra;
	private JTextField textVenda;
	private JPanel painelImagem2;
	private JLabel lblImagem2;
	// Instaciar um objeto da classe de comunica��o com o servidor

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					searchProd frame = new searchProd(null);
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
	public searchProd(String []  produtos) {
		setTitle("Procurar Produto");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBackground(SystemColor.menu);
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
		
		painelImagem2 = new JPanel();
		painelImagem2.setBounds(250, 40, 150, 150);
		contentPane.add(painelImagem2);
		
		lblImagem2 = new JLabel();
		painelImagem2.add(lblImagem2);	

	    Vector<String> comboBoxItems=new Vector<String>();
	    comboBoxItems.add("prod1");
		final DefaultComboBoxModel<String> model = new DefaultComboBoxModel<String>(comboBoxItems);
		JComboBox<String> comboBox = new JComboBox<String>(model);
		comboBox.setBounds(31, 52, 120, 20);
		contentPane.add(comboBox);
		
		comboBox.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				try {
					BarBarDriver.OracleConnection();
					BarBarDriver.selectWhere(inicialProduto.nomeTabela.getText(), "nome, valor_compra, valor_venda", String.valueOf(comboBox.getSelectedItem()));
					if (BarBarDriver.myRs.next())
					{
						textNome.setText(BarBarDriver.myRs.getString(1));
						textCompra.setText(BarBarDriver.myRs.getString(2));
						textVenda.setText(BarBarDriver.myRs.getString(3));
						abrirImagem(String.valueOf(comboBox.getSelectedItem()));
					}else
					{
						System.out.println("null");
					}
					BarBarDriver.myConn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		});
		
		JButton btnBuscar = new JButton("Buscar");
		btnBuscar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				try {
					BarBarDriver.OracleConnection();
					BarBarDriver.select(inicialProduto.nomeTabela.getText(), "ID");
					while(BarBarDriver.myRs.next())
					{	
						model.addElement(BarBarDriver.myRs.getString(1));
						//System.out.println(BarBarDriver.myRs.getString(1));
					}
					BarBarDriver.myConn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
			}
		});
		btnBuscar.setBounds(223, 227, 89, 23);
		contentPane.add(btnBuscar);
		
		JLabel lblNomeDoProduto = new JLabel("Nome do produto:");
		lblNomeDoProduto.setForeground(Color.BLACK);
		lblNomeDoProduto.setBackground(SystemColor.menu);
		lblNomeDoProduto.setBounds(32, 91, 127, 14);
		contentPane.add(lblNomeDoProduto);
		
		JLabel lblID = new JLabel("ID:");
		lblID.setBounds(32, 25, 80, 20);
		lblID.setForeground(Color.BLACK);
		lblID.setBackground(SystemColor.menu);
		contentPane.add(lblID);
		
		textNome = new JTextField();
		textNome.setEditable(false);
		textNome.setBounds(32, 108, 200, 20);
		contentPane.add(textNome);
		textNome.setColumns(10);
		
		JLabel lblValorDeCompra = new JLabel("Valor de Compra");
		lblValorDeCompra.setBounds(32, 139, 133, 14);
		contentPane.add(lblValorDeCompra);
		
		textCompra = new JTextField();
		textCompra.setEditable(false);
		textCompra.setBounds(31, 153, 135, 20);
		contentPane.add(textCompra);
		textCompra.setColumns(10);
		
		JLabel lblValorDeVenda = new JLabel("Valor de Venda");
		lblValorDeVenda.setBounds(32, 191, 133, 14);
		contentPane.add(lblValorDeVenda);
		
		textVenda = new JTextField();
		textVenda.setEditable(false);
		textVenda.setBounds(32, 205, 133, 20);
		contentPane.add(textVenda);
		textVenda.setColumns(10);
	}
	
	private void abrirImagem(String ID) {
		String path = null;
		try {
			//BarBarDriver.OracleConnection();
			path = BarBarDriver.downloadProdutosBlob(ID, inicialProduto.nomeTabela.getText());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			ImageIcon icon = new ImageIcon(path);
			icon.setImage(icon.getImage().getScaledInstance(painelImagem2.getWidth(), painelImagem2.getHeight(), 120));
			lblImagem2.setIcon(icon);
	}

}