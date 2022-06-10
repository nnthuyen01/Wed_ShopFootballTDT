package WebAoBD.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import WebAoBD.Dto.CartDto;
import WebAoBD.Entity.Bill;

@Service
public interface IBillService {
	public int AddBill(Bill bill);
	
	public void AddBillDetail(HashMap<Long, CartDto> carts);

}
