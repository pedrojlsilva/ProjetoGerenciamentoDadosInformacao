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
	
	public static void selectSingleCol(String relacao, String Coluna) throws SQLException
	{
		String sql = ("select "+Coluna+" from "+relacao);
		myRs = myStmt.executeQuery(sql);
		System.out.println(sql);
		
		ResultSetMetaData metadata = myRs.getMetaData();
		int columnCount = metadata.getColumnCount(); 
		int i=1;
		while(myRs.next())
		{	
			for (i=1;i<=columnCount;i++)
				System.out.print(myRs.getString(i)+" ");
			System.out.println("");
		}
	}
	
	public static void insertProdutos(String relacao, String Key, String c1, String c2, String c3) throws SQLException
	{
		String sql = "insert into "+relacao
				+ " (id, nome, valor_compra, valor_venda)"
				+ " values (" + Key + ", '" + c1 
				+ "', " + c2
				+ ", " + c3
				+ ")";
		//sql = "insert into produtos (id, nome, valor_compra, valor_venda) values (1, 'prod1', 1, 2)";
		
		System.out.println(sql);

		myStmt.executeUpdate(sql);
	}
	
	public static void insertProdutosBlob(String relacao, String Key) throws SQLException, IOException
	{
		String Blob = "";
		String sql = "select nome from "+relacao+" where id = "+Key;
		System.out.println(sql);
		myRs = myStmt.executeQuery(sql);

		if (myRs.next())
		{
			Blob = myRs.getString(1);
		}
		Blob = Blob.replaceAll("\\s", "");
		
		FileInputStream input = null;
		FileOutputStream output = null;
		try {
		File theFile = new File("C:\\Users\\hugow\\Documents\\GitHub\\GDI\\Hugo\\banco_img_produtos\\"+Blob+".jpg"); //aqui é para ler
		File newFile = new File("C:\\Users\\hugow\\Documents\\GitHub\\GDI\\Hugo\\banco_img_produtos\\"+Blob+"_teste_in.jpg"); //aqui é para escrever
		
		input = new FileInputStream(theFile);

		output = new FileOutputStream(newFile);
		
		String sql2 = "update "+relacao
				+ " set img=? where id = " + Key;
		
		ppStmt = myConn.prepareStatement(sql2);
		
		ppStmt.setBinaryStream(1, input, (int)theFile.length());
		
		byte[] buffer = new byte[1024];
		while(input.read(buffer) >0)
		{
			output.write(buffer);
		}

		System.out.println(sql2);
        System.out.println("Reading file " + theFile.getAbsolutePath());
        System.out.println("Store file in the database.");
		ppStmt.executeUpdate();
		}
		finally {
			input.close();
			output.close();
		}

	}
	
	public static void downloadProdutosBlob(String banco, String relacao, String Key) throws SQLException, IOException
	{
		String Blob = "";
		String sql = "select nome from "+banco+"."+relacao+" where id = "+Key;
		myRs = myStmt.executeQuery(sql);

		if (myRs.next())
		{
			Blob = myRs.getString(1);
		}
		Blob = Blob.replaceAll("\\s", "");
				
		File newFile = new File("C:\\Users\\hugow\\Documents\\GitHub\\GDI\\Hugo\\banco_img_produtos\\"+Blob+"_download.jpg"); //aqui é para escrever
		FileOutputStream output = new FileOutputStream(newFile);
				
		String sql2 = "select img from "+banco+"."+relacao
				+ " where id = " + Key;

		myRs = myStmt.executeQuery(sql2);

		if (myRs.next()) {

			FileInputStream input = (FileInputStream) myRs.getBinaryStream("img"); 
			
			byte[] buffer = new byte[1024];
			while (input.read(buffer) > 0) {
				output.write(buffer);
			}	
			output.close();
		}
	}
	
	public static void update(String relacao) throws SQLException
	{
		String sql = "update "+relacao
				+ " set email = 'bolado_69@hotmail.com', first_name = 'Paulo', last_name = 'Luiz'"
				+ " where id = 2";
		myStmt.executeUpdate(sql);
		System.out.println(sql);
	}
	
	public static void dropC(String relacao, String Column) throws SQLException
	{
		String sql = "alter table "+relacao
				+ " drop "+ Column;
		myStmt.executeUpdate(sql);
		System.out.println(sql);
	}
	
	public static void CreateBlobColumn(String relacao, String newcolumn) throws SQLException
	{
		String sql = "ALTER TABLE "+relacao
				+ " ADD "+ newcolumn +" LONGBLOB NOT NULL";
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
					selectSingleCol(attB[0],attB[1]);
					myConn.close();
					break;
				case "insertProdutos":
					OracleConnection();
					userIHM.atributosP();
					sw = userIHM.getValor_lido();
					attB = sw.split(",\\s*");
					insertProdutos(attB[0],attB[1],attB[2],attB[3],attB[4]);
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
				case "insertBlob":
					OracleConnection();
					userIHM.atributosP();
					sw = userIHM.getValor_lido();
					attB = sw.split(",\\s*");
					insertProdutosBlob(attB[0],attB[1]);
					myConn.close();
				break;
				case "downloadBlob":
					OracleConnection();
					userIHM.atributosP();
					sw = userIHM.getValor_lido();
					attB = sw.split(",\\s*");
					downloadProdutosBlob(attB[0],attB[1],attB[2]);
					myConn.close();
				break;
				case "update":
					OracleConnection();
					update("produtos");	
					myConn.close();
				break;
				case "Create":
					OracleConnection();
					CreateTable("produtos");	
					myConn.close();
				break;
				case "delete":
					OracleConnection();
					dropC("produtos","img");
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
