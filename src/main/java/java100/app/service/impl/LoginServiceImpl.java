package java100.app.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.LoginDao;
import java100.app.domain.Login;
import java100.app.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired 
    LoginDao loginDao;
    
    @Override
    public Login get(String id, String password) {
        HashMap<String,Object> params = new HashMap<>();
        params.put("id", id);
        params.put("password", password);
        
        return loginDao.findByEmailAndPassword(params);   
        }

}
