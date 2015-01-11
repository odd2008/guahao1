package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servlet.DoctorService;

public class DoctorAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		String action=request.getParameter("method");//��ȡhref���Ӵ�������ֵ�����ݲ�ͬmethod���󣬵��ò�ͬ����
		System.out.println("get:"+action);
		if(action.equals("infor"))//��ȡ����ѯҽ���������Ϣ
		{
			infor(request,response);
			
		}
		else if(action.equals("order"))//���˽���ԤԼ
		{
			order(request,response);
		}
		else if(action.equals("doctorShow"))	//������Ա��ʾ����ҽ����Ϣ
		{
			doctorShow(request,response);
		}
		else if(action.equals("editDoctor"))//����Ա����ҽ����Ϣ
		{
			edit(request, response);
			
		}
		else if(action.equals("deleteDoctor"))//����Ա����ɾ��ҽ����Ϣ
		{
			deleteDoctor(request, response);
			
		}
		else if(action.equals("allDoctor"))//���˲�ѯҽ����Ϣ
		{
			allDoctor(request, response);
			
		}
	}

	//���˲�ѯҽ����Ϣ
	private void allDoctor(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		List list=doctor.selectDoctor();
		request.setAttribute("list", list);
		request.getRequestDispatcher("home.jsp").forward(request, response);//��ת��home.jsp
		
		
	}

	//������Ա��ʾ����ҽ����Ϣ
	private void doctorShow(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		DoctorService doctor=new DoctorService();
		List list=doctor.selectDoctor();
		request.setAttribute("list", list);
		request.getRequestDispatcher("admin/doctor.jsp").forward(request, response);//��ת��admin/doctor.jsp
	}

	//����Ա����ɾ��ҽ����Ϣ
	private void deleteDoctor(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String id=request.getParameter("id");	
		System.out.println("id:"+id);
		if(doctor.deleteDoctor(id))
		{
			List list=doctor.selectDoctor();
			request.setAttribute("list", list);
			request.getRequestDispatcher("admin/doctor.jsp").forward(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('ɾ��ʧ��');history.go(-1);</script>");
		}
		
	}

	//����Ա����ҽ����Ϣ
	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String id=request.getParameter("id");		
		Map map=doctor.selectId(id);		
			request.setAttribute("map", map);
			request.getRequestDispatcher("admin/updateDoctor.jsp").forward(request, response);

		
	}

	
	//������Ա��ʾ����ԤԼ��Ϣ
	private void order(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String id=request.getParameter("id");		
		Map map=doctor.selectId(id);		
			request.setAttribute("map", map);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		
	}

	
	//��������ʾ����ѯ��ҽ����Ϣ
	private void infor(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String id=request.getParameter("id");		
		Map map=doctor.selectId(id);		
			request.setAttribute("map", map);
			request.getRequestDispatcher("introduction.jsp").forward(request, response);

		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		String action=request.getParameter("method");//��ȡ<form>��action��������ֵ�����ݲ�ͬaction���󣬵��ò�ͬ����
		System.out.println("post:"+action);

	 if(action.equals("select"))//���˲�ѯҽ����Ϣ
		{
		 select(request,response);
		}
		else if(action.equals("updateDoctor"))//����Ա����ҽ����Ϣ
			{
			updateDoctor(request,response);
			}
		else if(action.equals("addDoctor"))//����Ա���ҽ��
		{
			addDoctor(request,response);
		}

	}

	
	//����Ա���ҽ��
	private void addDoctor(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String type=request.getParameter("type");
		String phone=request.getParameter("phone");
		String introduction=request.getParameter("introduction");
		String age=request.getParameter("age");
		String workyear=request.getParameter("workyear");
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(doctor.addDoctor(name,type,phone,introduction,sex,age,workyear))   
		{
			out.print("<script type='text/javascript'>alert('��ӳɹ�');history.go(-1);</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('���ʧ��');history.go(-1);</script>");
		}
		
	}

	//����Ա����ҽ����Ϣ
	private void updateDoctor(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String type=request.getParameter("type");
		String phone=request.getParameter("phone");
		String age=request.getParameter("age");
		String workyear=request.getParameter("workyear");
		String id=request.getParameter("id");
		String introduction=request.getParameter("introduction");
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(doctor.updateDoctor(name,type,phone,introduction,sex,age,workyear,id))
		{
			out.print("<script type='text/javascript'>alert('�޸ĳɹ�');history.go(-1);</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('�޸�ʧ��');history.go(-1);</script>");
		}
	}

	
	//���˲�ѯҽ����Ϣ
	private void select(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String infor=request.getParameter("infor");
		
		List list=doctor.select(infor);
		System.out.println("list.size:"+list.size());
		if(list.size()!=0)
		{
			request.setAttribute("list", list);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('�Ҳ���û����Ӧ����Ϣ');history.go(-1);</script>");
		}
		
	}

}
