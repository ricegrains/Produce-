package DBC;



import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
   private static Connection conn=null;

   private static String url="jdbc:oracle:thin:@192.168.0.180:1521:orcl";


   private static String driver="oracle.jdbc.driver.OracleDriver";
   private static String username="scott";
   private static String pwd="abc123";
   
   static{
	   try {
	       	Class.forName(driver);
	} catch(Exception e) {
		e.printStackTrace();
	}
   }
   
   public static Connection getConnection(){
	  try {
		conn=DriverManager.getConnection(url,username,pwd);
	} catch (Exception e) {
		
		e.printStackTrace();
	} 
	return conn;
	   
   }
   public static void main(String[] args) {
	  System.out.println(DBConnection.getConnection());
   }
}
//这里是一点注释而已