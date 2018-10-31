package views;
import java.util.Scanner;

public class usuarioIHM implements IHM{
	
	private String valor_lido;
	public Scanner s = new Scanner(System.in);
	
	public void selecao()
	{        
		System.out.println("Digite o comando:");
        setValor_lido(s.nextLine());
	}
	
	public void atributosP()
	{      
		System.out.println("Digite atributos:");
		if (s.hasNextLine()) {
			setValor_lido(s.nextLine());
		}        
	}

	public String getValor_lido() {
		return valor_lido;
	}

	public void setValor_lido(String valor_lido) {
		this.valor_lido = valor_lido;
	}

}
