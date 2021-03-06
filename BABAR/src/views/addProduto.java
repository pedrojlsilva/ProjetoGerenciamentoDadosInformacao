package views;

import java.awt.AlphaComposite;
import java.awt.EventQueue;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.border.LineBorder;
import java.awt.Color;

public class addProduto extends JFrame {

	private JPanel contentPane;
	private JTextField nomeProd;
	private JTextField IDProd;
	private JTextField valorCompra;
	private JTextField valorVenda;
	private JPanel painelImagem;
	private File imagem;
	private JLabel lblimagem;
	//private Produto produto;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					addProduto frame = new addProduto();
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
	public addProduto() {
		setTitle("Adicionar Produto");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		nomeProd = new JTextField();
		nomeProd.setBounds(36, 52, 190, 20);
		contentPane.add(nomeProd);
		nomeProd.setColumns(10);
		
		IDProd = new JTextField();
		IDProd.setBounds(60, 13, 20, 20);
		contentPane.add(IDProd);
		IDProd.setColumns(10);
		
		valorCompra = new JTextField();
		valorCompra.setBounds(36, 95, 191, 20);
		contentPane.add(valorCompra);
		valorCompra.setColumns(10);
		
		JLabel lblID = new JLabel("ID:");
		lblID.setBounds(36, 11, 70, 25);
		contentPane.add(lblID);
		
		JLabel lblNome = new JLabel("Nome:");
		lblNome.setBounds(36, 30, 70, 25);
		contentPane.add(lblNome);
		
		JLabel lblValorDeCompra = new JLabel("Valor de Compra");
		lblValorDeCompra.setBounds(36, 81, 124, 14);
		contentPane.add(lblValorDeCompra);
		
		valorVenda = new JTextField();
		valorVenda.setBounds(36, 139, 191, 20);
		contentPane.add(valorVenda);
		valorVenda.setColumns(10);
		
		JLabel lblValorDeVenda = new JLabel("Valor de venda");
		lblValorDeVenda.setBounds(36, 123, 86, 14);
		contentPane.add(lblValorDeVenda);
		
		JButton btnAdicionarImagem = new JButton("Adicionar Imagem");
		btnAdicionarImagem.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					imagem=selecionarImagem();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				abrirImagem(imagem);
				//conexao.setImagem(getImagem())
				
			}
		});
		btnAdicionarImagem.setBounds(36, 196, 147, 23);
		contentPane.add(btnAdicionarImagem);
		
		JButton btnNewButton = new JButton("Salvar");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					BarBarDriver.OracleConnection();
					BarBarDriver.insertProdutos(inicialProduto.nomeTabela.getText(),IDProd.getText(), nomeProd.getText(), valorCompra.getText(),valorVenda.getText() ,imagem.getAbsolutePath());
					BarBarDriver.myConn.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		});
		btnNewButton.setBounds(236, 220, 89, 23);
		contentPane.add(btnNewButton);
		
		JButton btnVoltar = new JButton("Cancelar");
		btnVoltar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
			}
		});
		btnVoltar.setBounds(335, 220, 89, 23);
		contentPane.add(btnVoltar);
		
		painelImagem = new JPanel();
		painelImagem.setBorder(null);
		painelImagem.setBounds(280, 42, 150, 150);
		contentPane.add(painelImagem);
		
		lblimagem = new JLabel("");
		painelImagem.add(lblimagem);
	}
	
	public File selecionarImagem() throws SQLException {
		JFileChooser fileChooser = new JFileChooser();
		fileChooser.setDialogTitle("");
		fileChooser.setBounds(0, 0, 614, 397);
		contentPane.add(fileChooser);
		FileNameExtensionFilter filtro=new FileNameExtensionFilter("Imagens em JPEG e PNG", "jpg", "png");
		fileChooser.addChoosableFileFilter(filtro);
		fileChooser.setAcceptAllFileFilterUsed(false);
		fileChooser.setDialogType(JFileChooser.OPEN_DIALOG);
		fileChooser.setMultiSelectionEnabled(false);
		fileChooser.setCurrentDirectory(new File ("C:"));
		fileChooser.showOpenDialog(this);
		
		return fileChooser.getSelectedFile();
	}
	
	private byte[] getImagem() {
		boolean isPNG=false;
		
		if(imagem!=null) {
			isPNG=imagem.getName().endsWith("png");
			
			try {
				BufferedImage image = ImageIO.read(imagem);
				
				ByteArrayOutputStream out = new ByteArrayOutputStream();
				int type = BufferedImage.TYPE_INT_RGB;
				
				if (isPNG) {
					type=BufferedImage.BITMASK;
				}
				
				BufferedImage newImage=new BufferedImage(painelImagem.getWidth(),painelImagem.getHeight(),type);
				Graphics2D g = newImage.createGraphics();
				g.setComposite(AlphaComposite.Src);
				g.drawImage(image, 0,0, painelImagem.getWidth(), painelImagem.getHeight(), null);
				if(isPNG) {
					ImageIO.write(newImage, "png", out);
				}else {
					ImageIO.write(newImage, "jpg", out);
				}
				
				out.flush();
				byte[] byteArray = out.toByteArray();
				out.close();
				
				
				return byteArray;
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		
		return null;
	}//finaliza��o da fun��o getImagem
	
	private void abrirImagem(Object source) {
		if(source instanceof File) {
			ImageIcon icon = new ImageIcon(imagem.getAbsolutePath());
			icon.setImage(icon.getImage().getScaledInstance(painelImagem.getWidth(), painelImagem.getHeight(), 100));
			lblimagem.setIcon(icon);
		}//Fun��o para abrir imagem seja recuperada do BD ou diretamente do JfileChooser
		
	}
}