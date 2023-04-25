package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.x.protobuf.MysqlxNotice.SessionStateChanged.Parameter;

import config.Connect;
import entity.Product;
import entity.Users;

public class ProductList {
	static PreparedStatement ps = null;
	static ResultSet rs = null;
	
	public List<Product> getAllProduct () {
		List<Product> list = new ArrayList<Product>();
		String query = "select * from Product";
		try {
			Connection conn = Connect.openConnect();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while( rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4)));
			}
		} catch (Exception e) {
			
		}
		return list;
	}
	
	public static Product getProductByID(String id) {
		String query = "select * from Product where id = ?";
		try {
			Connection conn = Connect.openConnect();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				return new Product(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getString(4));
			}
			
			
		} catch (Exception e) {
		}
		return null;
	}
	
	public static Product insertProduct(Product product) {
		Connection conn = Connect.openConnect();
		try {
			PreparedStatement statement = conn.prepareStatement ("insert into product(`name`,`price`,`image`) values (?, ?, ?)");
			statement.setString(1, product.getName());
			System.out.println(product.getName());
			statement.setDouble(2, product.getPrice());
			statement.setString(3, product.getImage());
			statement.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
			return product;
	}
	
	public static Product updateProduct (Product product) {
		try {
			Connection conn = Connect.openConnect();
			ps = conn.prepareStatement ("update product set name = ?, price = ?, image = ? where id = ?");
			ps.setString(1,product.getName());
			ps.setDouble(2,product.getPrice());
			ps.setString(3,product.getImage());
			ps.setInt(4,product.getId());
			ps.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
			return product;
	}
	
	public static Product deleteProductByID(String id) {
		try {
			Connection conn = Connect.openConnect();
			ps = conn.prepareStatement ("delete from product where id = ?");
			ps.setString(1, id);
			ps.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
			return null;
	}
	
	public static Users FindUsernameAndPassword (String username, String password) {
		Users users = new Users();
		Connection connection = Connect.openConnect();
		Statement stmt;
		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("select username, password, role from users where username ='" + username
					+ "' and password ='" + password + "'");
			if (rs.next()) {
				users = new Users(rs.getString(1), rs.getString(2), rs.getBoolean(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
	
	
	public static Users insertUsers(Users users) {
		try {
			Connection conn = Connect.openConnect();
			ps = conn.prepareStatement ("insert into users(`username`,`password`) values (?,?)");
			ps.setString(1,users.getUsername());
			ps.setString(2,users.getPassword());
			ps.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
			return null;
	}
	
	
	public static List<Product> seach (String Seach) {
		List<Product> list = new ArrayList<Product>();
		try {
			Connection connection = Connect.openConnect();
			PreparedStatement statements = connection.prepareStatement("select * from Product where name like ?");
			statements.setString(1, '%' + Seach + '%');
			rs = statements.executeQuery();
			while(rs.next()) {
				list.add(new Product(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getString(4)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static int getAllcount() {
		try {
			Connection connection = Connect.openConnect();
			PreparedStatement statements = connection.prepareStatement("select count(*) from product");
			rs = statements.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			
		}	
		return 0;
	}
	
	public static int count (String txtSeach) {
		try {
			Connection connection = Connect.openConnect();
			PreparedStatement statements = connection.prepareStatement("select count(*) from product where name like ?");
			rs = statements.executeQuery();
			while(rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
	
		}
			return 0;
		}
	
	public static List<Product> listCount(int home) {
		List<Product> list = new ArrayList<Product>();
		try {
			Connection connection = Connect.openConnect();
			PreparedStatement statements = connection.prepareStatement("select * from product LIMIT 5 OFFSET ?");
			statements.setInt(1, (home-1)*5);
			rs = statements.executeQuery();
			while(rs.next()) {
				list.add(new Product(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getString(4)));
			}
		} catch (Exception e) {
		}
		return list;
	}
	
	public static List<Product> getProduct() {
		List<Product> list = new ArrayList<Product>();
		try {
			Connection connection = Connect.openConnect();
			PreparedStatement statements = connection.prepareStatement("select * from product LIMIT 5 OFFSET 0");
			rs = statements.executeQuery();
			while(rs.next()) {
				list.add(new Product(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getString(4)));
			}
		} catch (Exception e) {
			
		}
		return list;	
	}
	
	public static Users getUpdateUsers(Users users) {
		try {
			Connection connection = Connect.openConnect();
			PreparedStatement statements = connection.prepareStatement("update users set username = ? where id = ?");
			statements.setBoolean(1, true);
			statements.setString(2, users.getUsername());
			statements.execute();
		} catch (Exception e) {

		}
		return users;
	}
	
	
	
	
}