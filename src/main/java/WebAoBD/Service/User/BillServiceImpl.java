package WebAoBD.Service.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import WebAoBD.Dao.BillDao;
import WebAoBD.Dto.CartDto;
import WebAoBD.Entity.Bill;
import WebAoBD.Entity.BillDetail;

@Service
public class BillServiceImpl implements IBillService{
	
	@Autowired
	private BillDao billDao;

	public int AddBill(Bill bill) {
		return billDao.AddBill(bill);
	}

	public void AddBillDetail(HashMap<Long, CartDto> carts) {
		
		long idBill = billDao.GetIdLastBill();
		
		for (Map.Entry<Long, CartDto> itemCart:carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bill(idBill);
			billDetail.setId_product(itemCart.getValue().getProduct().getId_product());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billDao.AddBillDetail(billDetail);
		}
		
	}
	
	

}
