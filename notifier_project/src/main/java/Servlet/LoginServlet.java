package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import notifier_project.ConnectionPro;
import notifier_project.User;
import notifier_project.UserDatabase;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//feth data from login form
        
        String logemail = request.getParameter("email");
        String logpass = request.getParameter("password");
        
        UserDatabase db =  new UserDatabase(ConnectionPro.getConnection());
        User user = db.logUser(logemail, logpass);
        
        if(user!=null){
            HttpSession session = request.getSession();
            session.setAttribute("logUser", user);
            response.sendRedirect("welcome.jsp");
        }else{
           // out.println("user not found");
        }

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
