package servlet;

import java.util.Map;

import jdbc.JDBConnection;

public class AdminService {
	// ����Ա��½�ж��û�����������ȷ
	public boolean equalsAdmin(String name, String password) {
		try {
			Map map=JDBConnection.queryForMap("select *from admin where name=? and password=?", new String[]{name,password});
			
		} catch (Exception e) {
			return false;
		} 
		return true;
	}

}
