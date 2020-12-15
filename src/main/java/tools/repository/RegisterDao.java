package tools.repository;

import models.RegisterModel;
import tools.DbTool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {

    public String registerUser(RegisterModel registerModel)
    {
        String fullName = registerModel.getFullName();
        String email = registerModel.getEmail();
        String userName = registerModel.getUserName();
        String password = registerModel.getPassword();

        Connection con = null;
        PreparedStatement preparedStatement = null;

        try {
            con = DbTool.dbLoggIn();
            //Insert user details into the table 'USERS'
            String query = "INSERT INTO user(userID,fullName,email,userName,password) VALUES (NULL,?,?,?,?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, fullName);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, userName);
            preparedStatement.setString(4, password);

            int i = preparedStatement.executeUpdate();

            if (i!= 0)  //Just to ensure data has been inserted into the database
                return "SUCCESS";

        } catch (SQLException e){
            e.printStackTrace();
        }
        return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
        }

    }


