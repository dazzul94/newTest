package java100.app.web;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import java100.app.domain.Login;
import java100.app.service.LoginService;

@Controller
@RequestMapping("/auth")
@SessionAttributes("loginUser")
public class LoginController {
    
    @Autowired LoginService loginService;
    
    @RequestMapping(value="login", method=RequestMethod.GET)
    public String form(Model model) {
        model.addAttribute("menuVisible", false);
        return "auth/loginform";
    }
    
    @RequestMapping(value="login", method=RequestMethod.POST)
    public String login(
            String id, 
            String password,
            HttpServletResponse response,
            Model model) {
        
        Login login = loginService.get(id, password);
        
        if (login == null) {
            model.addAttribute("loginUser", null);
            model.addAttribute("menuVisible", false);
            return "auth/loginfail"; 
        }
        
        model.addAttribute("loginUser", login);
        
        return "redirect:../member/list";
    }
    
    @RequestMapping("logout")
    public String logout(HttpSession session, SessionStatus status) {
        
        // @SessionAttributes에서 관리하는 세션 데이터를 모두 제거한다.
        status.setComplete();
        
        // HttpSession 객체를 무효화시킨다.
        session.invalidate();
        
        return "redirect:login";
    }
}










