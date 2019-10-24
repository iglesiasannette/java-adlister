import com.mysql.cj.jdbc.Driver;
import java.sql.*;

public class MyDb {

    public static void main(String[] args) {

        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/codeup_test_db?serverTimezone=UTC&useSSL=false",
                    "root",
                    "codeup"
            );
            Statement stmt = connection.createStatement();
            String sql = "SELECT * FROM albums";
            ResultSet resultSet = stmt.executeQuery(sql);

            while(resultSet.next()){
                System.out.println("Artist:  " + resultSet.getString("artist") + "   Genre:  " + resultSet.getString("genre" ));
//                System.out.println("resultSet.getString(genre) = " + resultSet.getString("genre"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}





