package com.saad.socialmedia.routes;

import com.saad.socialmedia.models.DaoServices;
import com.saad.socialmedia.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
public class LoginController {

    @Autowired
    private DaoServices services;

    @Autowired
    private PageController pageController;

    @RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
    public void checkLogin(HttpServletRequest request, HttpServletResponse response){
        response.addHeader("location","/login");
        response.setStatus(301);
    }

    @RequestMapping(value="/checkSignUp", method = RequestMethod.POST)
    public void checkSignUp(HttpServletRequest request, HttpServletResponse response){

        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        String title = request.getParameter("title");
        String email = request.getParameter("email");

        User user = new User(name,email,pass,title);

        user = services.addUser(user);

        System.out.println(user.toString());

//        HttpSession session = request.getSession();
//        session.setAttribute("user",user);

        response.addHeader("location","/home");
        response.setStatus(301);
    }

}
