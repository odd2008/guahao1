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
		
		String action=request.getParameter("method");//��ȡhref���Ӵ�������ֵ�����ݲ�ͬmethod���󣬵��ò�ͬ����
		System.out.println("get:"+action);
		if(action.equals("orderList"))//ԤԼ��Ϣ�б�
		{
			orderList(request,response);
		}
		else if(action.equals("cancel"))//ȡ��ԤԼ��Ϣ
		{
			cancel(request,response);
		}
		else if(action.equals("orderShow"))//��ʾԤԼ��Ϣ
		{
			orderShow(request,response);
		}
		else if(action.equals("deleteOrder"))//ɾ��ԤԼ��Ϣ
		{
			deleteOrder(request,response);
		}
		
	}

	
	//ԤԼ��Ϣ�б�
	private void orderList(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		OrderService order=new OrderService();
		HttpSession session=request.getSession();
		String trueName=(String)session.getAttribute("trueName");
		List list=order.selectOrder(trueName);
		request.setAttribute("list",list);
		request.getRequestDispatcher("orderList.jsp").forward(request, response);
		
	}

	
	//ɾ��ԤԼ��Ϣ
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
			out.print("<script type='text/javascript'>alert('ɾ��ʧ��');history.go(-1);</script>");
		}
		
	}

	
	//��ʾԤԼ��Ϣ
	private void orderShow(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		OrderService order=new OrderService();
		List list=order.getOrder();
		request.setAttribute("list",list);
		request.getRequestDispatcher("admin/order.jsp").forward(request, response);
		
	}

	
	//ȡ��ԤԼ��Ϣ
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
			out.print("<script type='text/javascript'>alert('ȡ��ʧ��');history.go(-1);</script>");
		}
	}



	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		String action=request.getParameter("method");//��ȡ<form>��action��������ֵ�����ݲ�ͬaction���󣬵��ò�ͬ����
		System.out.println("post:"+action);

	 if(action.equals("order"))//����ԤԼ�Һ�
		{
		order(request,response);
		}

	}

	
	//����ԤԼ�Һ�
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
			out.print("<script type='text/javascript'>alert('Ԥ���ɹ�');window.location='home.jsp';</script>");
		}
		else
		{
			
			out.print("<script type='text/javascript'>alert('Ԥ��ʧ��');history.go(-1);</script>");
		}
		
	}

}
