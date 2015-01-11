package servlet;

import java.util.List;
import java.util.Map;

import jdbc.JDBConnection;

public class UserService {

	// 删除用户信息方法
	public boolean deleteUser(String tId) {
		if(JDBConnection.update("delete from users where id=?", new String[]{tId}))
			return true;
		else
			return false;
	}
	// 获取所有用户信息方法
	public List getUser() {
		List list=JDBConnection.queryForList("select *from users", null);
		return list;
	}


	// 用户登陆信息方法
	public boolean login(String username, String password) {
		try {
			Map map=JDBConnection.queryForMap("select *from users where trueName=? and number=?", new String[]{username,password});
			
		} catch (Exception e) {
			return false;
		} 
		return true;
	}
	// 用户注册信息方法
	public boolean addUser(String trueName, String number, String phone,
			String address,String sex,String age) {
		String sql="insert into users(trueName,number,phone,address,sex,age) values(?,?,?,?,?,?)";
		if(JDBConnection.update(sql, new String[]{trueName,number,phone,address,sex,age}))
			return true;
		else
	        return false;
	
	}
	
	
	//检验两次输入的证件号是否相同
	public boolean comnumber(String number, String renumber) {
		
		if(number.equals(renumber))
			return true;
		else
	        return false;

	}
	
	//用户更新信息
	public boolean updateUser(String trueName, String number, String phone,
			String address,String sex, String id) {
		if(JDBConnection.update("update users set trueName=?,number=?,phone=?,address=?,sex=? where id=?", new String[]{trueName,number,address,sex,phone,id}))
			return true;
			else
				return false;
	}

}
