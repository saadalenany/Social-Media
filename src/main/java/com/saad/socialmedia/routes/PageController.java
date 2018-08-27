package com.saad.socialmedia.routes;

import com.saad.socialmedia.config.WebConfig;
import com.saad.socialmedia.models.User;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

@RestController
public class PageController {

    private HttpServletRequest request;
    private HttpServletResponse response;

    @RequestMapping("/")
    public void autoRedirect(HttpServletRequest request, HttpServletResponse response){
        this.request = request;
        this.response = response;
        response.addHeader("location","/login");
        response.setStatus(301);
    }

    @RequestMapping("/home")
    public String home() {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        HashMap<String,Object> map = new HashMap();
        map.put("user",user);
        return render(map, "index.ftl");
    }

    @RequestMapping("/profile")
    public String profile() {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        HashMap<String,Object> map = new HashMap();
        map.put("user",user);
        return render(new HashMap(), "profile.ftl");
    }

    @RequestMapping("/login")
    public String login() {

        if (request == null){
            return "redirect:/" ;
        }

        return render(new HashMap(), "login.ftl");
    }

    public String render(Map map, String filename) {
        // write the freemarker output to a StringWriter 
        StringWriter stringWriter = new StringWriter();
        try {
            Configuration cfg = WebConfig.getConfiguration();
            //Create Data Model 
            Template template = cfg.getTemplate(filename);
            template.process(map, stringWriter);
            map.clear();
        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }
        return stringWriter.toString();
    }

}
