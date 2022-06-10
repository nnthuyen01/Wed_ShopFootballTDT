package WebAoBD.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBrand implements RowMapper<Brand>{

	public Brand mapRow(ResultSet rs, int rowNum) throws SQLException {
		Brand brand = new Brand();
		brand.setId(rs.getInt("id"));
		brand.setName(rs.getString("name"));
		return brand;
	}

}
