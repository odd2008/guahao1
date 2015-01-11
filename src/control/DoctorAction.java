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
	
		String action=request.getParameter("method");//获取href链接传过来的值，根据不同method请求，调用不同方法
		System.out.println("get:"+action);
		if(action.equals("infor"))//调取所查询医生或科室信息
		{
			infor(request,response);
			
		}
		else if(action.equals("order"))//病人进行预约
		{
			order(request,response);
		}
		else if(action.equals("doctorShow"))	//给管理员显示所有医生信息
		{
			doctorShow(request,response);
		}
		else if(action.equals("editDoctor"))//管理员更新医生信息
		{
			edit(request, response);
			
		}
		else if(action.equals("deleteDoctor"))//管理员进行删除医生信息
		{
			deleteDoctor(request, response);
			
		}
		else if(action.equals("allDoctor"))//病人查询医生信息
		{
			allDoctor(request, response);
			
		}
	}

	//病人查询医生信息
	private void allDoctor(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		List list=doctor.selectDoctor();
		request.setAttribute("list", list);
		request.getRequestDispatcher("home.jsp").forward(request, response);//跳转到home.jsp
		
		
	}

	//给管理员显示所有医生信息
	private void doctorShow(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		DoctorService doctor=new DoctorService();
		List list=doctor.selectDoctor();
		request.setAttribute("list", list);
		request.getRequestDispatcher("admin/doctor.jsp").forward(request, response);//跳转到admin/doctor.jsp
	}

	//管理员进行删除医生信息
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
			out.print("<script type='text/javascript'>alert('删除失败');history.go(-1);</script>");
		}
		
	}

	//管理员更新医生信息
	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String id=request.getParameter("id");		
		Map map=doctor.selectId(id);		
			request.setAttribute("map", map);
			request.getRequestDispatcher("admin/updateDoctor.jsp").forward(request, response);

		
	}

	
	//给管理员显示所有预约信息
	private void order(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String id=request.getParameter("id");		
		Map map=doctor.selectId(id);		
			request.setAttribute("map", map);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		
	}

	
	//给病人显示所查询的医生信息
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
		String action=request.getParameter("method");//获取<form>表单action传过来的值，根据不同action请求，调用不同方法
		System.out.println("post:"+action);

	 if(action.equals("select"))//病人查询医生信息
		{
		 select(request,response);
		}
		else if(action.equals("updateDoctor"))//管理员更新医生信息
			{
			updateDoctor(request,response);
			}
		else if(action.equals("addDoctor"))//管理员添加医生
		{
			addDoctor(request,response);
		}

	}

	
	//管理员添加医生
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
			out.print("<script type='text/javascript'>alert('添加成功');history.go(-1);</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('添加失败');history.go(-1);</script>");
		}
		
	}

	//管理员更新医生信息
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
			out.print("<script type='text/javascript'>alert('修改成功');history.go(-1);</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('修改失败');history.go(-1);</script>");
		}
	}

	
	//病人查询医生信息
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
			out.print("<script type='text/javascript'>alert('找不到没有相应的信息');history.go(-1);</script>");
		}
		
	}

}
