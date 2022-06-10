package WebAoBD.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import WebAoBD.Entity.Brand;
import WebAoBD.Entity.MapperBrand;

@Repository
public class BrandDao extends BaseDao{

	public List<Brand> getBrands() {
		List<Brand> list = new ArrayList<Brand>();
		String sql = "SELECT * FROM brand";
		list = _jdbcTemplate.query(sql, new MapperBrand());
		return list;
	}

}
