package WebAoBD.Service.User;

import org.springframework.stereotype.Service;

import WebAoBD.Dto.PaginateDto;

@Service
public class PaginateServiceImpl implements IPaginateService{
	public PaginateDto GetInfoPaginate(int totalData, int limit, int currentPage) {
		PaginateDto paginate = new PaginateDto();
		paginate.setLimit(limit);
		paginate.setTotalPage(SetInfoTotalPage(totalData, limit));
		paginate.setCurrentPage(CheckCurrentPage(currentPage, paginate.getTotalPage()));

		int start = findStart(paginate.getCurrentPage(), limit);
		paginate.setStart(start);
		
		int end = findEnd(paginate.getStart(), limit, totalData);
		paginate.setEnd(end);
		return paginate;
	}

	private int findEnd(int start, int limit, int totalData) {
		return start + limit > totalData ? totalData : (start + limit) - 1;
	}

	private int findStart(int currentPage, int limit) {
		return (currentPage - 1) * limit;
	}

	private int SetInfoTotalPage(int totalData, int limit) {
		int totalPage = 0;
		totalPage = totalData / limit;
		totalPage = totalPage * limit < totalData ? totalPage + 1 : totalPage;
		return totalPage;
	}

	public int CheckCurrentPage(int currentPage, int totalPage) {
		if (currentPage < 1) {
			return 1;
		}
		if (currentPage > totalPage) {
			return totalPage;
		}
		return currentPage;
	}
}
