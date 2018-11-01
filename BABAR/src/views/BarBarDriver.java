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
		
		/*ResultSetMetaData metadata = myRs.getMetaData();
		int columnCount = metadata.getColumnCount(); 
		int i=1;
		while(myRs.next())
		{	
			for (i=1;i<=columnCount;i++)
				System.out.print(myRs.getString(i)+" ");
			System.out.println("");
		}*/
	}
	
	public static void selectWhere(String relacao, String colunas, String cond) throws SQLException
	{
		String sql = "select "+colunas+" from "+relacao +" where id = "+ cond;
		System.out.println(sql);
		myRs = myStmt.executeQuery(sql);
		
		/*ResultSetMetaData metadata = myRs.getMetaData();
		int columnCount = metadata.getColumnCount(); 
		
		while(myRs.next())
		{	
			for (int i=1;i<=columnCount;i++)
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
	
	public static String downloadProdutosBlob(String Key, String relacao) throws SQLException, IOException
	{
		String Blob = "";
		String sql = "select nome from "+ relacao+" where id = "+Key;
		myRs = myStmt.executeQuery(sql);
		
		if (myRs.next())
		{
			Blob = myRs.getString(1);
		}
		Blob = Blob.replaceAll("\\s", "");
				
		File newFile = new File("C:\\Users\\Public\\Documents\\"+Blob+"_download.jpg"); //aqui é para escrever
		FileOutputStream output = new FileOutputStream(newFile);
				
		String sql2 = "select imagem from "+ relacao+" where id = " + Key;

		myRs = myStmt.executeQuery(sql2);

		if (myRs.next()) {

			byte[] bytes = myRs.getBytes(1);
			
			output.write(bytes);	
			output.close();
		}
		
		return newFile.getAbsolutePath();
	}
	
	public static void dropC(String relacao) throws SQLException
	{
		String sql = "  DECLARE cnt NUMBER;\n" + 
				"  BEGIN\n" + 
				"    SELECT COUNT(*) INTO cnt FROM user_tables WHERE table_name = '"+relacao+"';\n" + 
				"    IF cnt <> 0 THEN\n" + 
				"      EXECUTE IMMEDIATE 'DROP TABLE "+ relacao+"';\n" + 
				"    END IF;\n" + 
				"  END;\n";
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
					"    CONSTRAINT "+ nometabela+"_pk PRIMARY KEY (id)\r\n" + 
					")";
		System.out.println(sql);

		myStmt.executeQuery(sql);
	}
	
	public static void main() throws SQLException
	
	{
	}

}
