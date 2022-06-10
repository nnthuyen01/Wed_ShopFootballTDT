package WebAoBD.Dao;

import org.springframework.stereotype.Repository;

import WebAoBD.Entity.Bill;
import WebAoBD.Entity.BillDetail;

@Repository
public class BillDao extends BaseDao {
	public int AddBill(Bill bill) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO `bill`( `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note`) VALUES ( ");
		sql.append(" '" + bill.getUser() + "', ");
		sql.append(" '" + bill.getPhone() + "', ");
		sql.append(" '" + bill.getDisplay_name() + "', ");
		sql.append(" '" + bill.getAddress() + "', ");
		sql.append(" '" + bill.getToltal() + "', ");
		sql.append(" '" + bill.getQuanty() + "', ");
		sql.append(" '" + bill.getNote() + "' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public long GetIdLastBill() {
		String sql = "SELECT MAX(id) FROM bill";
		long id = _jdbcTemplate.queryForObject(sql, new Object[] {}, Long.class);
		return id;
	}
	
	public int AddBillDetail(BillDetail billDetail) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO `billdetail`( `id_product`, `id_bill`, `quanty`, `total`) VALUES ( ");
		sql.append(" '" + billDetail.getId_product() + "', ");
		sql.append(" '" + billDetail.getId_bill() + "', ");
		sql.append(" '" + billDetail.getQuanty() + "', ");
		sql.append(" '" + billDetail.getTotal() + "' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
}
