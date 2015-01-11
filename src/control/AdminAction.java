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
		String action =request.getParameter("method");//��ȡhref���Ӵ�������ֵ�����ݲ�ͬmethod���󣬵��ò�ͬ����
		System.out.println("get:" + action);
		if (action.equals("adminLogin")) {
			request.getRequestDispatcher("admin/adminLogin.jsp").forward(request, response);  //��ת������Ա����
		}
        
	
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AdminService admin = new AdminService();
		request.setCharacterEncoding("gbk");
		String name = request.getParameter("name");          //�õ�����Ա����
		String password = request.getParameter("password");  //�õ�����Ա����
		System.out.println("name:" + name);
		// ����Ա��½

		if (admin.equalsAdmin(name, password)) {     //������������ƥ��
			
			request.getRequestDispatcher("admin/doctor.jsp").forward(request, response);  //��½�ɹ�ת��doctor����
			//request.getRequestDispatcher("admin/top1.jsp").forward(request, response);  //��½�ɹ�ת��doctor����
		} else {
			response.setContentType("text/html;charset=GBK");
			PrintWriter out = response.getWriter();
			out.print("<script type='text/javascript'>alert('����Ա�����������!');history.go(-1);</script>"); //���������ʾ
		}

		

	
	}

}
