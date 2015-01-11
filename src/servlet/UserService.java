package servlet;

import java.util.List;
import java.util.Map;

import jdbc.JDBConnection;

public class UserService {

	// ɾ���û���Ϣ����
	public boolean deleteUser(String tId) {
		if(JDBConnection.update("delete from users where id=?", new String[]{tId}))
			return true;
		else
			return false;
	}
	// ��ȡ�����û���Ϣ����
	public List getUser() {
		List list=JDBConnection.queryForList("select *from users", null);
		return list;
	}


	// �û���½��Ϣ����
	public boolean login(String username, String password) {
		try {
			Map map=JDBConnection.queryForMap("select *from users where trueName=? and number=?", new String[]{username,password});
			
		} catch (Exception e) {
			return false;
		} 
		return true;
	}
	// �û�ע����Ϣ����
	public boolean addUser(String trueName, String number, String phone,
			String address,String sex,String age) {
		String sql="insert into users(trueName,number,phone,address,sex,age) values(?,?,?,?,?,?)";
		if(JDBConnection.update(sql, new String[]{trueName,number,phone,address,sex,age}))
			return true;
		else
	        return false;
	
	}
	
	
	//�������������֤�����Ƿ���ͬ
	public boolean comnumber(String number, String renumber) {
		
		if(number.equals(renumber))
			return true;
		else
	        return false;

	}
	
	//�û�������Ϣ
	public boolean updateUser(String trueName, String number, String phone,
			String address,String sex, String id) {
		if(JDBConnection.update("update users set trueName=?,number=?,phone=?,address=?,sex=? where id=?", new String[]{trueName,number,address,sex,phone,id}))
			return true;
			else
				return false;
	}

}
