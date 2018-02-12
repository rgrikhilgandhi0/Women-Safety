package filter;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.print.DocFlavor.URL;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.LoginDAO;
import VO.LoginVO;

@WebFilter("/*")
public class LoginFilter implements Filter {

    public LoginFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpSession session =((HttpServletRequest) request).getSession();
		RequestDispatcher requestDispatcher;
		String flag = request.getParameter("flag");
		/*System.out.println("-----flag value-----"+flag);*/
		
		String uri = ((HttpServletRequest)request).getRequestURI();
		
		/*System.out.println("uri before checkin .jsp :: "+uri);
		if(uri.contains("jsp") && !uri.contains("login") )
		{
			System.out.println("postComplaint uri :: "+uri);
			if(uri.contains("/")){
				System.out.println("URI je howi joiye ae :: "+uri);
				int i = uri.lastIndexOf('/');
				System.out.println("____index of '/' :: "+i);
				uri = uri.substring(i);
				System.out.println("URI je set thaay chhe ae :: "+uri);
				session.setAttribute("uri",uri);
				requestDispatcher = request.getRequestDispatcher("/user/login.jsp");
				requestDispatcher.forward(request,response);  		
			}
		}*/
		
		if(uri.contains("RegistrationController")|| uri.contains("reg")||uri.contains("/css") || uri.contains("/js") && !uri.contains(".jsp") || uri.contains("/img")|| uri.contains("/aboutUs.jsp")|| uri.contains("/contactUs.jsp")|| uri.contains("/findYourPoliceStation.jsp") || uri.contains("/helpline.jsp") || uri.contains("/safetyTips.jsp") || uri.contains("user/index.jsp") || uri.contains("/findYourPoliceStation.jsp") || uri.contains("/fonts") || uri.contains("/FindPoliceStationController"))
		{
			
			System.out.println("1");
			chain.doFilter(request,response);
		}
		/*if(uri.contains("postComplaint.jsp"))
		{
			String usertype = (String)session.getAttribute("usertype");
			if(usertype == null)
			{
				System.out.println("--++++--");
				requestDispatcher = request.getRequestDispatcher("/user/login.jsp");
			}
			else
			{
				System.out.println("-----");
				chain.doFilter(request,response);
			}
		}*/
		else if (flag!= null && flag.equals("logout")) 
		{
			System.out.println("2");

			//session.removeAttribute("userID");
			//System.out.println("logout in else if");
		
			session.invalidate();
 			requestDispatcher = request.getRequestDispatcher("/user/login.jsp");
			requestDispatcher.forward(request, response);
		}
		else if(flag != null && flag.equals("login") )
		{
/*			System.out.println("3");*/

			//System.out.println("Login");
			
			String emailId = request.getParameter("emailId");
			String password = request.getParameter("password");
			System.out.println(emailId+""+password);
			
			LoginVO LoginVO = new LoginVO();
			LoginVO.setEmailId(emailId);
			LoginVO.setPassword(password);
			
			LoginDAO loginDAO = new LoginDAO();
			List list =  loginDAO.authentication(LoginVO);
			
			List ls = loginDAO.toAdmin();
			LoginVO toAdmin=(LoginVO) ls.get(0);
			
			int adminId = toAdmin.getLoginId();
			System.out.println("Admin ID : "+adminId);
			session.setAttribute("adminID",adminId);

			//String admin = session.setAttribute("toAdmin", toAdmin);
			
			System.out.println("List ="+list.size());
			if(list != null && list.size()>=1)
			{
				System.out.println("-----------User type--------------");
				//Iterator itr = list.iterator();
				//while(itr.hasNext()){
				LoginVO user=(LoginVO) list.get(0);
				
				int y = user.getLoginId();
				System.out.println("User ID : "+y);
				session.setAttribute("userID",y);
				
				System.out.println(user.getUserType());
			//	System.out.println(session.getAttribute("userId"));
				String type = user.getUserType();
				System.out.println("User Type : "+type);
				session.setAttribute("usertype",type);
				System.out.println(y);
				if(type.equalsIgnoreCase("Admin"))
				{	
					System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkk"+type);
					requestDispatcher = request.getRequestDispatcher("/admin/index.jsp");  
					requestDispatcher.forward(request,response);
				}
				else if(type.equalsIgnoreCase("PoliceStaff"))
				{
					requestDispatcher = request.getRequestDispatcher("/admin/index.jsp");  
					requestDispatcher.forward(request,response);
				}
				else if(type.equalsIgnoreCase("User"))
				{
					requestDispatcher = request.getRequestDispatcher("/user/inbox.jsp");
					requestDispatcher.forward(request,response);
				}
				else
				{
					requestDispatcher = request.getRequestDispatcher("/user/inbox.jsp");  
					requestDispatcher.forward(request,response);  
				}
			}
			else
			{
				requestDispatcher = request.getRequestDispatcher("/user/login.jsp");
				requestDispatcher.forward(request,response);  		
			}	
		}
		else if(session.getAttribute("userID") != null)
		{
			System.out.println("4");

			String h = (String)session.getAttribute("usertype");
			//System.out.println("type = = = " + h);
			
			if(h!=null && h.equals("Admin")){

				System.out.println("redirecting to ADMIN");
				chain.doFilter(request,response);
			}
			
			else if(h!=null && h.equals("PoliceStaff"))
			{
				System.out.println("redirecting to POLICE STAFF");
				chain.doFilter(request, response);
			}
			else if(h!=null && h.equals("User"))
			{
				System.out.println("redirecting to USER");
				chain.doFilter(request, response);
			}
			else
			{
				System.out.println("redirecting to ERROR");
				RequestDispatcher rd = request.getRequestDispatcher("/user/error.jsp");  
				rd.forward(request,response);
			}
		}
		else
		{
			/*System.out.println("5");*/

			RequestDispatcher rd = request.getRequestDispatcher("/user/login.jsp");  
			rd.forward(request,response);  
			
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
