package views;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JLabel;
import javax.swing.JComboBox;
import javax.swing.DefaultComboBoxModel;
import java.awt.Color;
import java.awt.SystemColor;
import javax.swing.JTextField;

public class searchProd extends JFrame {

	private JPanel contentPane;
	private JComboBox comboBox;
	private String[] nomes;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;

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
		
		JPanel panel = new JPanel();
		panel.setBounds(290, 42, 113, 110);
		contentPane.add(panel);
		
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
			}
		});
		btnBuscar.setBounds(223, 227, 89, 23);
		contentPane.add(btnBuscar);
		
		JLabel lblIdDoProduto = new JLabel("ID do produto:");
		lblIdDoProduto.setForeground(Color.BLACK);
		lblIdDoProduto.setBackground(SystemColor.menu);
		lblIdDoProduto.setBounds(32, 91, 127, 14);
		contentPane.add(lblIdDoProduto);
		
		textField = new JTextField();
		textField.setEditable(false);
		textField.setBounds(32, 108, 133, 20);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JLabel lblValorDeCompra = new JLabel("Valor de Compra");
		lblValorDeCompra.setBounds(32, 139, 133, 14);
		contentPane.add(lblValorDeCompra);
		
		textField_1 = new JTextField();
		textField_1.setEditable(false);
		textField_1.setBounds(31, 153, 135, 20);
		contentPane.add(textField_1);
		textField_1.setColumns(10);
		
		JLabel lblValorDeVenda = new JLabel("Valor de Venda");
		lblValorDeVenda.setBounds(32, 191, 133, 14);
		contentPane.add(lblValorDeVenda);
		
		textField_2 = new JTextField();
		textField_2.setEditable(false);
		textField_2.setBounds(32, 205, 133, 20);
		contentPane.add(textField_2);
		textField_2.setColumns(10);
	}
}
