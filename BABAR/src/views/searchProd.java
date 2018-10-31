package views;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.io.File;
import java.awt.event.ActionEvent;
import javax.swing.JLabel;
import javax.swing.JComboBox;
import javax.swing.DefaultComboBoxModel;
import javax.swing.ImageIcon;

import java.awt.Color;
import java.awt.SystemColor;
import javax.swing.JTextField;

public class searchProd extends JFrame {

	private JPanel contentPane;
	private JComboBox comboBox;
	private String[] nomes;
	private JTextField textID;
	private JTextField textCompra;
	private JTextField textVenda;
	private String produtoBuscado;
	private File imagem2;
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
		this.nomes=produtos;
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
		painelImagem2.setBounds(290, 42, 113, 110);
		contentPane.add(painelImagem2);
		
		lblImagem2 = new JLabel();
		painelImagem2.add(lblImagem2);
		
		JLabel lblNome = new JLabel("Nome:");
		lblNome.setBounds(32, 26, 46, 14);
		contentPane.add(lblNome);
		
		comboBox = new JComboBox();
		comboBox.setModel(new DefaultComboBoxModel(nomes));
		comboBox.setBounds(31, 42, 134, 20);
		contentPane.add(comboBox);
		
		JButton btnBuscar = new JButton("Buscar");
		btnBuscar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				produtoBuscado=(String) comboBox.getSelectedItem();
				// Fazer uma consulta ao servidor para retornar a imagem, o valor de compra, o valor de venda e o nome
				//textVenda.setText(inserir aqui o retorno da conex�o);
				//textCompra.setText(inserir aqui o retorno da conexao);
				//textID.setText(inserir aqui o retorno da conex�o);
				//abrirImagem(inserir aqui o retorno da conex�o);
				
			}
		});
		btnBuscar.setBounds(223, 227, 89, 23);
		contentPane.add(btnBuscar);
		
		JLabel lblIdDoProduto = new JLabel("ID do produto:");
		lblIdDoProduto.setForeground(Color.BLACK);
		lblIdDoProduto.setBackground(SystemColor.menu);
		lblIdDoProduto.setBounds(32, 91, 127, 14);
		contentPane.add(lblIdDoProduto);
		
		textID = new JTextField();
		textID.setEditable(false);
		textID.setBounds(32, 108, 133, 20);
		contentPane.add(textID);
		textID.setColumns(10);
		
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
	
	private void abrirImagem(Object source) {
		if(source instanceof File) {
			ImageIcon icon = new ImageIcon(imagem2.getAbsolutePath());
			icon.setImage(icon.getImage().getScaledInstance(painelImagem2.getWidth(), painelImagem2.getHeight(), 100));
			lblImagem2.setIcon(icon);
		}//Fun��o para abrir imagem seja recuperada do BD ou diretamente do JfileChooser
	}
}