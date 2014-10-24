package dbbean;

import java.sql.*;

public class DBBean {

	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	
	public DBBean(){}
	
	//�õ�����
	public Connection getConnection() throws Exception
	{
		//�������ݿ��URL
		String url = "jdbc:sqlserver://localhost:1433;DatabaseName=Schoolfellownews";
		String user = "xiedongtian";
		String pwd = "201130760326";
		
		
			try
			{	
				System.out.println("1");
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
				System.out.println("2");
				con = DriverManager.getConnection(url, user, pwd);
				System.out.println("3");
			}catch (Exception e){
				e.printStackTrace();
			}
			return con;
		}
		
	
	//ִ���н�������ص�sql���
	public ResultSet executeQuery(String sql)throws Exception
	{
	   if(con==null)
		   throw new Exception("û�����Ӷ������");
	   //����������
	   stmt=con.createStatement();
	   rs=stmt.executeQuery(sql);
	   return rs;
	   
	}
	
	//ִ�и������
	public int executeUpdate(String sql) throws Exception
	{
		if(con==null)
			throw new Exception("û�ж������ӿ���");
		stmt=con.createStatement();
		return stmt.executeUpdate(sql);
	}
	
	public void close()
	{
		try{if(rs!=null) rs.close();}catch(Exception e){}
		try{stmt.close();}catch(Exception e){}
		try{con.close();}catch(Exception e){}
		
	}
}
