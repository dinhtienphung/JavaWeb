package entity;

public class Users {
	private String username;
	private String password;
	private boolean role;
	
	public Users() {
		
	}
	
	
	public Users(String username, String password, boolean role) {
		super();
		this.username = username;
		this.password = password;
		this.role = role;
	}


	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isRole() {
		return this.role;
	}
	public void setRole(boolean role) {
		this.role = role;
	}


	@Override
	public String toString() {
		return "Users [username=" + username + ", password=" + password + ", role=" + role + "]";
	}


	
	
}
