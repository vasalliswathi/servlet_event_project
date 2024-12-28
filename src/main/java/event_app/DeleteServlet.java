package event_app;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {

		int id=Integer.parseInt(req.getParameter("id"));
		
		Connection con=null;
		PreparedStatement ps=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management_system","root","1234");
			ps=con.prepareStatement("delete from event where id=?");
			ps.setInt(1, id);
			int row = ps.executeUpdate();
			if(row==1) {
				PrintWriter pw = res.getWriter();
				pw.write("<html><body><h1> Event Deleted Successfully Done.. </h1></body></html>");
				RequestDispatcher rd = req.getRequestDispatcher("all");
				rd.include(req, res);
			}
		
		} 
		catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			if(ps!=null) {
				
				try {
					ps.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			if(con!=null) {
				
				try {
					con.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		}
		
	
	
	}
}
