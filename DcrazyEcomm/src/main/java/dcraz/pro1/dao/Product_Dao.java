package dcraz.pro1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dcraz.pro1.model.Product;

public class Product_Dao {
	
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    public Product_Dao(Connection con) {
		this.con = con;
	}
    
    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<Product>();
        try {

            query = "select * from products";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Product row = new Product();
                row.setId(rs.getInt("id"));
                row.setName(rs.getString("name"));
                row.setCategory(rs.getString("category"));
                row.setPrice(rs.getDouble("price"));
                row.setImage(rs.getString("image"));

                products.add(row);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return products;
    }


}
