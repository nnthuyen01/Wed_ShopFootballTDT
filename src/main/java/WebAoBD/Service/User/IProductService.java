package WebAoBD.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import WebAoBD.Dto.ProductDto;

@Service
public interface IProductService {
	public ProductDto GetProductById(long id);
	public List<ProductDto> GetProductByCid(int id);
	public List<ProductDto> GetAllProduct();
	public List<ProductDto> SerchProductByName(String name);

}
