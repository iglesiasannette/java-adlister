//
//In the DaoFactory class, switch out the ListAdsDao for your MySQLAdsDao
//
//        You should have to make little, if any, changes to the existing code
//        When you create an instance of MySQLAdsDao, create an instance of your Config class
//        to pass to the MySQLAdsDao constructor


//Verify that your application still functions as before, but that now information is being
//        pulled from and saved to your database

public class DaoFactory {

    private static Ads adsDao;

    static Config config = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {

            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static void main(String[] args) {
        
    }
}
