package WebAoBD.Entity;

public class BillDetail {
	private long id;
	private long id_product;
	private long id_bill;
	private int quanty;
	private double total;

	public BillDetail() {
		super();
	}

	public long getId_bill() {
		return id_bill;
	}

	public void setId_bill(long id_bill) {
		this.id_bill = id_bill;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getId_product() {
		return id_product;
	}

	public void setId_product(long id_product) {
		this.id_product = id_product;
	}

	public int getQuanty() {
		return quanty;
	}

	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

}
