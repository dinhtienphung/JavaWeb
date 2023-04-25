package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import config.Connect;
import entity.Items;
import entity.Orders;

public class UserActionList {
	static PreparedStatement ps = null;
	static ResultSet rs = null;
	
	public static Orders inserToCart(Orders order) {
		Connection connection = Connect.openConnect();
		try {
			PreparedStatement statement = connection.prepareStatement
			("insert into orders (`userName`, `productID`) values (?,?)");
			statement.setString(1, order.getUserName());
			statement.setInt(2, order.getProductID());
			statement.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return order;
	}
	
	public static List<Items> getCart (String username) {
		System.out.println(username);
		List<Items> item = new ArrayList<Items>();
		try {
			Connection connection = Connect.openConnect();
			PreparedStatement statement = connection.prepareStatement 
			("SELECT users.username, product.id, product.name, product.price, product.image" 
					+ " FROM users INNER JOIN orders ON users.username = orders.userName"
					+ " inner join product on orders.productID = product.ID"
					+ " having users.username = ?;");
			statement.setString(1, username);
			rs = statement.executeQuery();
			while (rs.next()) {
				item.add(new Items(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getDouble(4), rs.getString(5)));
			}		
		} catch (Exception e) {

		}
		return item;
	}
}
