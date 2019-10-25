import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;



//Create a class named MySQLAdsDao that implements the Ads interface
//
//This class should have a private instance property named connection of type Connection
//        that is initialized in the constructor. Define your constructor so that it accepts an
//        instance of your Config class so that it can obtain the database credentials.
//
//Implement the methods in the Ads interface
//Your methods should retrieve ads from the database and insert new ads into the database
//
//The connection object will be created just once, in this class'
//        constructor, and the individual methods that query the database should use the
//        connection object to create statements.


public class MySQLAdsDao implements Ads {

    private Connection connection;


    public MySQLAdsDao(Config config){
            try {


                DriverManager.registerDriver(new Driver());
                connection = DriverManager.getConnection(
                        config.getUrl(),
                        config.getUsername(),
                        config.getPassword()
                );

            } catch (SQLException e) {
                e.printStackTrace();

            }
        }



    public List<Ad> all() {
        List<Ad> ads = new ArrayList<>();

        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM ads");
            while(rs.next()){
//                translate the Resultset into an List<Ad>
                Ad ad = new Ad(rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description"));
//                Add the new Ad into the List<Ad>
                ads.add(ad);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        try {
            Statement stmt = connection.createStatement();

            String sql = String.format("insert into ads (id, userId, title, description) values('%s', '%s', '%s', '%s')");

            stmt.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                return rs.getLong(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return 0L;
    }


}




