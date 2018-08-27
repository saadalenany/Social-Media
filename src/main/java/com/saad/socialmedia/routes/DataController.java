package com.saad.socialmedia.routes;

import com.saad.socialmedia.models.DaoServices;
import com.saad.socialmedia.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@RestController
public class DataController {

    @Autowired
    private DaoServices services;

    @Autowired
    private PageController pageController;

    @RequestMapping("/users")
    public ArrayList<User> getUsers() {
        return services.getAllUsers();
    }

    @RequestMapping("/users/{id}")
    public String getUser(@PathVariable int id) {
        User user = services.getUserById(id);
        Map<String, Object> map = new HashMap<>();
        map.put("user", user);
        return map.toString();
    }

    @RequestMapping(method = RequestMethod.POST, value = "/users")
    public void addUser(@RequestBody User user) {
        services.addUser(user);
    }

    @RequestMapping(method = RequestMethod.PUT, value = "/users/{id}")
    public void updateUser(@RequestBody User user, @PathVariable int id) {
        services.updateUser(id, user);
    }

    @RequestMapping(method = RequestMethod.DELETE, value = "/users/{id}")
    public void deleteUser(@PathVariable int id) {
        services.deleteUser(id);
    }

}
