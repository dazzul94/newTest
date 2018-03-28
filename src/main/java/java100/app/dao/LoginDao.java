package java100.app.dao;

import java.util.Map;

import java100.app.domain.Login;

public interface LoginDao {
//참고 src77
    Login findByEmailAndPassword(Map<String,Object> params);
}
