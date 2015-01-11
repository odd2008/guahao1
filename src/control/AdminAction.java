package control;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import servlet.AdminService;

public class AdminAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		String action =request.getParameter("method");//获取href链接传过来的值，根据不同method请求，调用不同方法
		System.out.println("get:" + action);
		if (action.equals("adminLogin")) {
			request.getRequestDispatcher("admin/adminLogin.jsp").forward(request, response);  //跳转到管理员界面
		}
        
	
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AdminService admin = new AdminService();
		request.setCharacterEncoding("gbk");
		String name = request.getParameter("name");          //得到管理员姓名
		String password = request.getParameter("password");  //得到管理员密码
		System.out.println("name:" + name);
		// 管理员登陆

		if (admin.equalsAdmin(name, password)) {     //进行姓名密码匹配
			
			request.getRequestDispatcher("admin/doctor.jsp").forward(request, response);  //登陆成功转到doctor界面
			//request.getRequestDispatcher("admin/top1.jsp").forward(request, response);  //登陆成功转到doctor界面
		} else {
			response.setContentType("text/html;charset=GBK");
			PrintWriter out = response.getWriter();
			out.print("<script type='text/javascript'>alert('管理员或者密码错误!');history.go(-1);</script>"); //密码错误，提示
		}

		

	
	}

}
