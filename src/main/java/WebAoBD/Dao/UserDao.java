package WebAoBD.Dao;

import org.springframework.stereotype.Repository;

import WebAoBD.Entity.MapperUser;
import WebAoBD.Entity.User;

@Repository
public class UserDao extends BaseDao{
	public int AddAccount (User user) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO user (user, password, display_name, address) ");
		sql.append("VALUES ( ");
		sql.append(" '" +user.getUser()+"', ");
		sql.append(" '" +user.getPassword()+"', ");
		sql.append(" '" +user.getDisplay_name()+"', ");
		sql.append(" '" +user.getAddress()+"' ");
		sql.append(")");
		
		int insert= _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public User GetUserByAcc (User user) {
		String sql ="SELECT * FROM user WHERE user = '"+user.getUser()+ "'";
		
		User result= _jdbcTemplate.queryForObject(sql, new MapperUser());
		
		return result;
	}

}
