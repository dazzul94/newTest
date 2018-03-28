package java100.app.service;

import java100.app.domain.Login;

public interface LoginService {
    Login get(String email, String password);  
}
