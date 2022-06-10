package WebAoBD.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import WebAoBD.Dao.ProductDao;
import WebAoBD.Dto.ProductDto;
@Service
public class CategoryServiceImpl implements ICategoryService{
	@Autowired
	private ProductDao productDao;

	public List<ProductDto> GetProductByCid(int id) {
		return productDao.GetProductByCid(id);
	}
	public List<ProductDto> GetProductPaginate(int id,int start, int totalPage) {
		return productDao.GetProductPaginate(id, start, totalPage);
	}


}
