package WebAoBD.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import WebAoBD.Dao.ProductDao;
import WebAoBD.Dto.ProductDto;

@Service
public class ProductServiceImpl implements IProductService{

	@Autowired
	private ProductDao productDao;
	
	public ProductDto GetProductById(long id) {
		List<ProductDto> list = productDao.GetProductById(id);
		return list.get(0);
	}

	public List<ProductDto> GetProductByCid(int id) {
		return productDao.GetProductByCid(id);
	}

	public List<ProductDto> GetAllProduct() {
		
		return productDao.GetAllProduct();
	}

	public List<ProductDto> SerchProductByName(String name) {
		return productDao.SerchProductByName(name);
	}

}
