package WebAoBD.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import WebAoBD.Dao.BrandDao;
import WebAoBD.Dao.CategorysDao;
import WebAoBD.Dao.MenuDao;
import WebAoBD.Dao.ProductDao;
import WebAoBD.Dao.SlidesDao;
import WebAoBD.Dto.ProductDto;
import WebAoBD.Entity.Brand;
import WebAoBD.Entity.Categorys;
import WebAoBD.Entity.Menu;
import WebAoBD.Entity.Slides;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategorysDao categorysDao;
	@Autowired
	private BrandDao brandDao;
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private ProductDao productDao;

	public List<Slides> GetDataSlides() {

		return slidesDao.GetDataSlides();
	}

	public List<Categorys> GetDataCategorys() {

		return categorysDao.GetDataCategorys();
	}

	public List<Brand> getBrands() {

		return brandDao.getBrands();
	}

	public List<Menu> GetDataMenu() {
		
		return menuDao.GetDataMenu();
	}

	public List<ProductDto> GetDataProduct() {
		List<ProductDto> listProduct = productDao.GetDataProduct();
		return listProduct;
	}

	public List<ProductDto> GetLastProduct() {
		List<ProductDto> listProduct = productDao.GetLastProduct();
		return listProduct;
	}

}
