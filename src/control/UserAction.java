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
		String action=request.getParameter("method");//获取href链接传过来的值，根据不同method请求，调用不同方法
		System.out.println("get:"+action);
		if(action.equals("userLogin"))
		{
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else if(action.equals("register"))//用户注册
		{
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
		else if(action.equals("exit"))//退出
		{
			exit(request, response);
		}
		else if(action.equals("adminexit"))//管理员退出
		{
			adminexit(request, response);
		}
		else if(action.equals("userShow"))//显示用户信息
		{
			userShow(request, response);
		}
		else if(action.equals("deleteUser"))	//删除用户
		{
			deleteUser(request, response);
		}
		else if(action.equals("returnIndex"))//用户退出
		{
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		else if(action.equals("editUser"))//用户更新信息
		{
			edit(request, response);
			
		}
	}

	
	//病人修改信息
	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
	//	DoctorService user=new DoctorService();
	//	String id=request.getParameter("id");		
	//	Map map=user.selectId(id);		
	//		request.setAttribute("map", map);
			request.getRequestDispatcher("updateuser.jsp").forward(request, response);

		
	}
	
	
	
	
	//删除用户
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
		out.print("<script type='text/javascript'>alert('删除失败');history.go(-1);</script>");
	}
	}

	//显示用户信息
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
		String action=request.getParameter("method");//获取<form>表单action传过来的值，根据不同action请求，调用不同方法
		System.out.println("post:"+action);

	 if(action.equals("login"))//用户登陆
		{
			login(request,response);
		}
		else if(action.equals("updateUser"))//用户更新信息
		{
			updateUser(request,response);
		}
		else if(action.equals("register"))//用户注册
		{
			register(request,response);
		}
		
	}
	
	//退出
	private void exit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		session.removeAttribute("tureName");
		session.invalidate();
		req.getRequestDispatcher("index.jsp").forward(req, resp);		
	}
	
	
//管理员退出
   private void adminexit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		session.removeAttribute("name");
		session.invalidate();
		req.getRequestDispatcher("admin.jsp").forward(req, resp);		
	}
	
	
	
	//用户注册
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
			out.print("<script type='text/javascript'>alert('注册成功,请登录');window.location='index.jsp';</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('注册失败');history.go(-1);</script>");
		//	out.print("<script type='text/javascript'>alert('注册成功,请登录');window.location='index.jsp';</script>");
		}
		
		
	}
		
	
	

	
	//用户更新信息
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
			out.print("<script type='text/javascript'>alert('修改成功');history.go(-1);</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('修改失败');history.go(-1);</script>");
		}
		
		
		out.print("<script type='text/javascript'>alert('2');history.go(-1);</script>");
		
	}
	
	

	
	//用户登陆
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
			out.print("<script type='text/javascript'>alert('真实姓名或者密码错误');history.go(-1);</script>");
		}
		
	}

}
