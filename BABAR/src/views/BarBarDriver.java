package views;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import oracle.jdbc.pool.OracleDataSource;

public class BarBarDriver 
{
	
	public String myDriver; 
	public String name;
	public static Statement myStmt;
	public static ResultSet myRs;
	public static Connection myConn;

	String myUrl; 
	String user;
	String password;
	
	static PreparedStatement ppStmt = null;
	
	public BarBarDriver() {}
	
    public static void OracleConnection() throws SQLException{
        String jdbcUrl = "jdbc:oracle:thin:@oracle11g.cin.ufpe.br:1521:instance01"; //oracle11g.cin.ufpe.br:1521:instance01
        String userid = "g182if685_eq06";
        String ppassword = "hywqufve"; 
       
        
    	try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			myConn = DriverManager.getConnection(jdbcUrl, userid, ppassword);
	        myStmt = myConn.createStatement();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
    } 
	
	public static void MySQLConnection()
	{
		try {
			myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/barbar?verifyServerCertificate=false&useSSL=true", "root","positividade");
			myStmt = myConn.createStatement();
		}		
		catch (Exception exc) {
			exc.printStackTrace();
		}
		
	}
	
	public static void select(String relacao, String Coluna) throws SQLException
	{
		String sql = ("select "+Coluna+" from "+relacao);
		System.out.println(sql);
		myRs = myStmt.executeQuery(sql);
		
		ResultSetMetaData metadata = myRs.getMetaData();
		int columnCount = metadata.getColumnCount(); 
		int i=1;
		/*while(myRs.next())
		{	
			for (i=1;i<=columnCount;i++)
				System.out.print(myRs.getString(i)+" ");
			System.out.println("");
		}*/
	}
	
	public static void insertProdutos(String relacao, String Key, String c1, String c2, String c3, String path) throws SQLException, IOException
	{
		FileInputStream input = null;
		try {
		File theFile = new File(path); //aqui é para ler
		
		input = new FileInputStream(theFile);
		
		String sql = "insert into "+relacao
				+ " (id, nome, valor_compra, valor_venda, imagem)"
				+ " values (" + Key + ", '" + c1 
				+ "', " + c2
				+ ", " + c3
				+ ", ?)";
		
		System.out.println(sql);
		ppStmt = myConn.prepareStatement(sql);
		ppStmt.setBinaryStream(1, input, (int)theFile.length());

		System.out.println(sql);
        System.out.println("Reading file " + theFile.getAbsolutePath());
        System.out.println("Store file in the database.");
		ppStmt.executeUpdate();
		}
		finally {
			input.close();
		}
	}
	
	public static String downloadProdutosBlob(String Key) throws SQLException, IOException
	{
		String Blob = "";
		String sql = "select nome from produtos where id = "+Key;
		myRs = myStmt.executeQuery(sql);

		if (myRs.next())
		{
			Blob = myRs.getString(1);
		}
		Blob = Blob.replaceAll("\\s", "");
				
		File newFile = new File("C:\\Users\\hugow\\Documents\\UFPE\\UFPE - 10ºp\\GDI\\BABAR\\down_icon\\"+Blob+"_download.jpg"); //aqui é para escrever
		FileOutputStream output = new FileOutputStream(newFile);
				
		String sql2 = "select img from produtos where id = " + Key;

		myRs = myStmt.executeQuery(sql2);

		if (myRs.next()) {

			FileInputStream input = (FileInputStream) myRs.getBinaryStream("img"); 
			
			byte[] buffer = new byte[1024];
			while (input.read(buffer) > 0) {
				output.write(buffer);
			}	
			output.close();
		}
		
		return newFile.getAbsolutePath();
	}
	
	public static void selectWhere(String relacao, String colunas, String cond) throws SQLException
	{
		String sql = "select "+colunas + " from "+relacao+" where nome = '"+ cond +"'";
		System.out.println(sql);
		myStmt.executeUpdate(sql);
	}
	
	public static void dropC(String relacao) throws SQLException
	{
		String sql = "drop table "+relacao;
		myStmt.executeUpdate(sql);
		System.out.println(sql);
	}
	
	public static void CreateBlobColumn(String relacao, String newcolumn) throws SQLException
	{
		String sql = "ALTER TABLE "+relacao
				+ " ADD "+ newcolumn +" BLOB NOT NULL";
		System.out.println(sql);
		myStmt.executeUpdate(sql);
	}
	
	public static void CreateTable(String nometabela) throws SQLException
	{
		String sql = "CREATE TABLE "+ nometabela+ "(\r\n" + 
					"    id NUMERIC NOT NULL,\r\n" + 
					"    nome VARCHAR2(30) NOT NULL,\r\n" + 
					"    valor_compra NUMBER(10,2) NOT NULL,\r\n" + 
					"    valor_venda NUMBER(10,2) NOT NULL,\r\n" + 
					"    CONSTRAINT Produtos_pk PRIMARY KEY (id)\r\n" + 
					")";
		System.out.println(sql);

		myStmt.executeQuery(sql);
	}
	
	public static void main() throws SQLException
	
	{
		String[] attB;
		boolean flag = true;
					
		//MySQLConnection();
		
		IHM userIHM = new usuarioIHM();
		
		while(flag == true) {
		userIHM.selecao();
		String sw = userIHM.getValor_lido();
		
		try {		
			switch (sw)
			{
				case "select":
					OracleConnection();
					userIHM.atributosP();
					sw = userIHM.getValor_lido();
					attB = sw.split(",\\s*");
					select(attB[0],attB[1]);
					myConn.close();
					break;
				case "insertProdutos":
					OracleConnection();
					userIHM.atributosP();
					sw = userIHM.getValor_lido();
					attB = sw.split(",\\s*");
					insertProdutos(attB[0],attB[1],attB[2],attB[3],attB[4], attB[5]);
					myConn.close();
					break;
				case "createBlob":
					OracleConnection();
					userIHM.atributosP();
					sw = userIHM.getValor_lido();
					attB = sw.split(",\\s*");
					CreateBlobColumn(attB[0],attB[1]);
					myConn.close();
					break;
				case "downloadBlob":
					OracleConnection();
					userIHM.atributosP();
					sw = userIHM.getValor_lido();
					attB = sw.split(",\\s*");
					downloadProdutosBlob(attB[0]);
					myConn.close();
				break;
				case "Create":
					OracleConnection();
					CreateTable("produtos");	
					myConn.close();
				break;
				case "delete":
					OracleConnection();
					dropC("produtos");
					myConn.close();
				break;
				case "close":
					OracleConnection();
					myConn.close();
					flag = false;
					System.out.println(flag);
				break;
			}
		}
		catch (Exception exc) 
		{
			exc.printStackTrace();
		}
	}
	}

}
