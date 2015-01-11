package servlet;

import java.util.List;

import jdbc.JDBConnection;

public class OrderService {

	//预约挂号
	public boolean addOrder(String tureName, String type, String time,
			String name, String age, String workyear, String phone) {
		if(JDBConnection.update("insert into orders(tureName,name,type,time,age,workyear,phone) values (?,?,?,?,?,?,?)",new String[]{tureName,name,type,time,age,workyear,phone}))
				return true;
		else
			
		return false;
	}

	
	//显示所有病人预约信息
	public List selectOrder(String trueName) {
		List list=JDBConnection.queryForList("select *from orders where tureName=?", new String[]{trueName});
		return list;
	}

	//删除预约信息
	public boolean cancel(String id) {
		if(JDBConnection.update("delete from orders where id=?", new String[]{id}))
		         return true;
		else
			return false;
	}

	//显示预约信息
	public List getOrder() {
		List list=JDBConnection.queryForList("select *from orders",null);
		return list;
	}

}
