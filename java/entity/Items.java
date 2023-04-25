package entity;

public class Items {
	private String username;
	private int productID;
	private String name;
	private double price;
	private String image;
	
	public Items(String username, int productID, String name, double price, String image) {
		super();
		this.username = username;
		this.productID = productID;
		this.name = name;
		this.price = price;
		this.image = image;
	}
	public Items() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
}