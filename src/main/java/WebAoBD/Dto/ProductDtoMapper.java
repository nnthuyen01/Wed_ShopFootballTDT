package WebAoBD.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductDtoMapper implements RowMapper<ProductDto>{

	public ProductDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductDto product = new ProductDto();
		product.setId_product(rs.getLong("id_product"));
		product.setName(rs.getString("name"));
		product.setYear(rs.getInt("year"));
		product.setPrice(rs.getDouble("price"));
		product.setImg(rs.getString("img"));
		product.setId_category(rs.getInt("id_category"));
		product.setId_brand(rs.getInt("id_brand"));
		product.setCategory_name(rs.getString("category_name"));
		product.setBrand_name(rs.getString("brand_name"));
		return product;
	}

}
