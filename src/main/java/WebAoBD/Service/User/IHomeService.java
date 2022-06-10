package WebAoBD.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import WebAoBD.Dto.ProductDto;
import WebAoBD.Entity.Brand;
import WebAoBD.Entity.Categorys;
import WebAoBD.Entity.Menu;
import WebAoBD.Entity.Slides;

@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlides();

	public List<Categorys> GetDataCategorys();

	public List<Brand> getBrands();
	
	public List<Menu> GetDataMenu();
	
	public List<ProductDto> GetDataProduct();
	
	public List<ProductDto> GetLastProduct();
}
