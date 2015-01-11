package servlet;

import java.util.List;
import java.util.Map;

import jdbc.JDBConnection;



public class DoctorService {

	//ͨ�����������ѡ��ҽ��
	public List select(String infor) {
		List list=JDBConnection.queryForList("select *from doctor where name=? or type=?", new String[]{infor,infor});
		return list;
	}

	//ͨ��IDѡ��ҽ��
	public Map selectId(String id) {
		Map map=null;
		try {
			map=JDBConnection.queryForMap("select *from doctor where id=?", new String[]{id});
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}

	//ɾ��ҽ����Ϣ
	public boolean deleteDoctor(String id) {
		if(JDBConnection.update("delete from doctor where id=?", new String[]{id}))			
		return true;
		else
			return false;
	}

	public List selectDoctor() {
		List list=JDBConnection.queryForList("select *from doctor order by type,name desc",null);
		return list;
	}

	//���ҽ����Ϣ
	public boolean addDoctor(String name, String type, String phone,
			String introduction,String sex, String age, String workyear) {
		if(JDBConnection.update("insert into doctor(name,type,phone,introduction,sex,age,workyear) values (?,?,?,?,?,?,?)", new String[]{name,type,phone,introduction,sex,age,workyear}))
		return true;
		else
			return false;
	}

	//����ҽ����Ϣ
	public boolean updateDoctor(String name, String type, String phone,
			String introduction,String sex, String age, String workyear, String id) {
		if(JDBConnection.update("update doctor set name=?,type=?,phone=?,introduction=?,sex=?,age=?,workyear=? where id=?", new String[]{name,type,phone,introduction,sex,age,workyear,id}))
			return true;
			else
				return false;
	}

}
