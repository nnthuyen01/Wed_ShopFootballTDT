package WebAoBD.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import WebAoBD.Dto.ProductDto;

@Service
public interface ICategoryService {
	
	public List<ProductDto> GetProductByCid(int id);
	public List<ProductDto> GetProductPaginate(int id, int start, int totalPage);
}
