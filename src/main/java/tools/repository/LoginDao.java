package tools.repository;
import models.UserModel;
import tools.DbTool;

import java.sql.*;

public class LoginDao {
    public String authenticateUser(UserModel userModel)
    {
        String userName = userModel.getUserName(); //Assign user entered values to temporary variables.
        String password = userModel.getPassword();

        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        String userNameDB = "";
        String passwordDB = "";

        try {
            con = DbTool.dbLoggIn(); //Fetch database connection object
            statement = con.createStatement(); //Statement is used to write queries.
            resultSet = statement.executeQuery("SELECT userName, password FROM user"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.

            while (resultSet.next()) // Until next row is present otherwise it return false
            {
                userNameDB = resultSet.getString("userName"); //fetch the values present in database
                passwordDB = resultSet.getString("password");

                if (userName.equals(userNameDB) && password.equals(userName)) {
                    return "SUCCESS"; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
                }
            }

        } catch (SQLException e){
            e.printStackTrace();
        }

        return "Invalid user credentials"; // Return appropriate message in case of failure

    }
}


