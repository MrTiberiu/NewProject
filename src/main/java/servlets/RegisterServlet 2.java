package servlets;

import models.RegisterModel;
import tools.repository.RegisterDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

    public RegisterServlet(){

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Copying all the input parameters in to local variables
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        RegisterModel registerModel = new RegisterModel();
        registerModel.setFullName(fullName);
        registerModel.setEmail(email);
        registerModel.setUserName(userName);
        registerModel.setPassword(password);

        RegisterDao registerDao = new RegisterDao();

        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
        String userRegistered = registerDao.registerUser(registerModel);

        if (userRegistered.equals("SUCCESS")) //On success, you can display a message to user on Home page
        {
            request.getRequestDispatcher("/Home.jsp").forward(request, response);

        } else {

            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/Register.jsp").forward(request, response);

        }

    }

}
