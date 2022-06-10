package WebAoBD.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import WebAoBD.Dto.ProductDto;
import WebAoBD.Dto.ProductDtoMapper;
@Repository
public class ProductDao extends BaseDao{
	
	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT p.id as id_product, p.name, p. year, p.price, p.img, p.id_category, p.id_brand, c.name as category_name, b.name as brand_name ");
		sql.append("FROM (products as p ");
		sql.append("INNER JOIN categorys as c ON p.id_category = c.id) ");
		sql.append("INNER JOIN brand as b ON p.id_brand = b.id ");
		return sql;
	}
	
	public List<ProductDto> GetDataProduct(){
		StringBuffer sql = SqlString();
		sql.append("LIMIT 9");
		List<ProductDto> listProduct = _jdbcTemplate.query(sql.toString(), new ProductDtoMapper());
		return listProduct;
	}
	
	public List<ProductDto> GetAllProduct(){
		StringBuffer sql = SqlString();
		List<ProductDto> listProduct = _jdbcTemplate.query(sql.toString(), new ProductDtoMapper());
		return listProduct;
	}
	
	public List<ProductDto> SerchProductByName(String name){
		StringBuffer sql = SqlString();
		sql.append("WHERE p.name LIKE '%"+name+"%' ");
		List<ProductDto> listProduct = _jdbcTemplate.query(sql.toString(), new ProductDtoMapper());
		return listProduct;
	}
		
	public List<ProductDto> GetLastProduct() {
		StringBuffer sql = SqlString();
		sql.append("ORDER BY id_product desc limit 8");
		List<ProductDto> listProduct = _jdbcTemplate.query(sql.toString(), new ProductDtoMapper());
		return listProduct;
	}
	
	public List<ProductDto> GetProductByCid(int id) {
		StringBuffer sql = SqlString();
		sql.append("where id_category = " + id + " ORDER by rand() LIMIT 5 ");
		List<ProductDto> listProduct = _jdbcTemplate.query(sql.toString(), new ProductDtoMapper());
		return listProduct;
	}
	
	public List<ProductDto> GetProductPaginate(int id, int start, int totalPage) {
		StringBuffer sql = SqlString();
		sql.append("where id_category = " + id + " ");
		List<ProductDto> listProduct = new ArrayList<ProductDto>();
		listProduct = _jdbcTemplate.query(sql.toString(), new ProductDtoMapper());
		if (listProduct.size()>0) {
			sql.append("limit " + start +", " + totalPage);
			listProduct = _jdbcTemplate.query(sql.toString(), new ProductDtoMapper());
		}
		
		return listProduct;
	}

	public List<ProductDto> GetProductById(long id) {
		StringBuffer sql = SqlString();
		sql.append("where p.id = " + id + " ");
		sql.append("limit 1");
		List<ProductDto> listProduct = _jdbcTemplate.query(sql.toString(), new ProductDtoMapper());
		return listProduct;
	}
	
	public ProductDto GetProductByIdForCart(long id) {
		StringBuffer sql = SqlString();
		sql.append("where p.id = " + id + " ");
		ProductDto product = _jdbcTemplate.queryForObject(sql.toString(), new ProductDtoMapper());
		return product;
	}
}
