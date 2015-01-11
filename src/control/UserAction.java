package control;

import java.awt.List;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import servlet.DoctorService;
import servlet.UserService;

public class UserAction extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		String action=request.getParameter("method");//��ȡhref���Ӵ�������ֵ�����ݲ�ͬmethod���󣬵��ò�ͬ����
		System.out.println("get:"+action);
		if(action.equals("userLogin"))
		{
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else if(action.equals("register"))//�û�ע��
		{
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
		else if(action.equals("exit"))//�˳�
		{
			exit(request, response);
		}
		else if(action.equals("adminexit"))//����Ա�˳�
		{
			adminexit(request, response);
		}
		else if(action.equals("userShow"))//��ʾ�û���Ϣ
		{
			userShow(request, response);
		}
		else if(action.equals("deleteUser"))	//ɾ���û�
		{
			deleteUser(request, response);
		}
		else if(action.equals("returnIndex"))//�û��˳�
		{
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		else if(action.equals("editUser"))//�û�������Ϣ
		{
			edit(request, response);
			
		}
	}

	
	//�����޸���Ϣ
	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
	//	DoctorService user=new DoctorService();
	//	String id=request.getParameter("id");		
	//	Map map=user.selectId(id);		
	//		request.setAttribute("map", map);
			request.getRequestDispatcher("updateuser.jsp").forward(request, response);

		
	}
	
	
	
	
	//ɾ���û�
	private void deleteUser(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
	request.setCharacterEncoding("gbk");
	UserService user=new UserService();
	String id=request.getParameter("id");
	if(user.deleteUser(id))
	{
		java.util.List list=user.getUser();
		request.setAttribute("list", list);
		request.getRequestDispatcher("admin/user.jsp").forward(request, response);		
	}
	else
	{
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		out.print("<script type='text/javascript'>alert('ɾ��ʧ��');history.go(-1);</script>");
	}
	}

	//��ʾ�û���Ϣ
	private void userShow(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UserService user=new UserService();
		 java.util.List list=user.getUser();
		request.setAttribute("list", list);
		request.getRequestDispatcher("admin/user.jsp").forward(request, response);		
	}

	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		String action=request.getParameter("method");//��ȡ<form>��action��������ֵ�����ݲ�ͬaction���󣬵��ò�ͬ����
		System.out.println("post:"+action);

	 if(action.equals("login"))//�û���½
		{
			login(request,response);
		}
		else if(action.equals("updateUser"))//�û�������Ϣ
		{
			updateUser(request,response);
		}
		else if(action.equals("register"))//�û�ע��
		{
			register(request,response);
		}
		
	}
	
	//�˳�
	private void exit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		session.removeAttribute("tureName");
		session.invalidate();
		req.getRequestDispatcher("index.jsp").forward(req, resp);		
	}
	
	
//����Ա�˳�
   private void adminexit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		session.removeAttribute("name");
		session.invalidate();
		req.getRequestDispatcher("admin.jsp").forward(req, resp);		
	}
	
	
	
	//�û�ע��
	private void register(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("gbk");
		UserService user=new UserService();
		String trueName=request.getParameter("trueName");
		String sex=request.getParameter("sex");
		String number=request.getParameter("number");
		String renumber=request.getParameter("renumber");
		String phone=request.getParameter("phone");
		String age=request.getParameter("age");
		String address=request.getParameter("address");
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		//if(number.equals(renumber) && user.addUser(trueName,number,phone,address,sex))
		
		
		if(user.comnumber(number, renumber) && user.addUser(trueName,number,phone,address,sex,age))
		{
			out.print("<script type='text/javascript'>alert('ע��ɹ�,���¼');window.location='index.jsp';</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('ע��ʧ��');history.go(-1);</script>");
		//	out.print("<script type='text/javascript'>alert('ע��ɹ�,���¼');window.location='index.jsp';</script>");
		}
		
		
	}
		
	
	

	
	//�û�������Ϣ
	private void updateUser(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("gbk");
		UserService user=new UserService();
		String trueName=request.getParameter("trueName");
		String number=request.getParameter("number");
		String address=request.getParameter("address");
		String sex=request.getParameter("sex");
		String phone=request.getParameter("phone");
		String id=request.getParameter("id");

		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();

		
		out.print("<script type='text/javascript'>alert('hehe');history.go(-1);</script>");
		
		if(user.updateUser(trueName,number,phone,address,sex,id))
		{
			out.print("<script type='text/javascript'>alert('�޸ĳɹ�');history.go(-1);</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('�޸�ʧ��');history.go(-1);</script>");
		}
		
		
		out.print("<script type='text/javascript'>alert('2');history.go(-1);</script>");
		
	}
	
	

	
	//�û���½
	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		UserService fans=new UserService();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println("username:"+username);
		if(fans.login(username,password))
		{			
			HttpSession session=request.getSession();
			session.setAttribute("trueName", username);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		else{
		response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('��ʵ���������������');history.go(-1);</script>");
		}
		
	}

}
