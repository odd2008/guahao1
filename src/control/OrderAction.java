package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import servlet.DoctorService;
import servlet.OrderService;

public class OrderAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String action=request.getParameter("method");//获取href链接传过来的值，根据不同method请求，调用不同方法
		System.out.println("get:"+action);
		if(action.equals("orderList"))//预约信息列表
		{
			orderList(request,response);
		}
		else if(action.equals("cancel"))//取消预约信息
		{
			cancel(request,response);
		}
		else if(action.equals("orderShow"))//显示预约信息
		{
			orderShow(request,response);
		}
		else if(action.equals("deleteOrder"))//删除预约信息
		{
			deleteOrder(request,response);
		}
		
	}

	
	//预约信息列表
	private void orderList(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		OrderService order=new OrderService();
		HttpSession session=request.getSession();
		String trueName=(String)session.getAttribute("trueName");
		List list=order.selectOrder(trueName);
		request.setAttribute("list",list);
		request.getRequestDispatcher("orderList.jsp").forward(request, response);
		
	}

	
	//删除预约信息
	private void deleteOrder(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		OrderService order=new OrderService();
		String id=request.getParameter("id");
		if(order.cancel(id))
		{
			List list=order.getOrder();
			request.setAttribute("list",list);
			request.getRequestDispatcher("admin/order.jsp").forward(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('删除失败');history.go(-1);</script>");
		}
		
	}

	
	//显示预约信息
	private void orderShow(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		OrderService order=new OrderService();
		List list=order.getOrder();
		request.setAttribute("list",list);
		request.getRequestDispatcher("admin/order.jsp").forward(request, response);
		
	}

	
	//取消预约信息
	private void cancel(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		String id=request.getParameter("id");
		OrderService order=new OrderService();
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(order.cancel(id))
		{
			HttpSession session=request.getSession();
			String trueName=(String)session.getAttribute("trueName");
			List list=order.selectOrder(trueName);
			request.setAttribute("list",list);
			request.getRequestDispatcher("orderList.jsp").forward(request, response);
		}
		else{
			out.print("<script type='text/javascript'>alert('取消失败');history.go(-1);</script>");
		}
	}



	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		String action=request.getParameter("method");//获取<form>表单action传过来的值，根据不同action请求，调用不同方法
		System.out.println("post:"+action);

	 if(action.equals("order"))//进行预约挂号
		{
		order(request,response);
		}

	}

	
	//进行预约挂号
	private void order(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("gbk");
		OrderService order=new OrderService();
		String tureName=request.getParameter("tureName");
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String age=request.getParameter("age");
		String workyear=request.getParameter("workyear");
		String time=request.getParameter("time");
		String phone=request.getParameter("phone");
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(order.addOrder(tureName,type,time,name,age,workyear,phone))
		{
			out.print("<script type='text/javascript'>alert('预定成功');window.location='home.jsp';</script>");
		}
		else
		{
			
			out.print("<script type='text/javascript'>alert('预定失败');history.go(-1);</script>");
		}
		
	}

}
