package WebAoBD.Service.User;

import org.springframework.stereotype.Service;

import WebAoBD.Dto.PaginateDto;

@Service
public interface IPaginateService {
	public PaginateDto GetInfoPaginate(int totalData, int limit, int currentPage);
}
