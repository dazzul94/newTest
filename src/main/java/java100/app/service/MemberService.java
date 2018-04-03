package java100.app.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java100.app.domain.Member;

public interface MemberService {
    int add(Member member);
    List<Member> list(int pageNo, int pageSize, Map<String,Object> options);
    int getTotalCount();
    Member get(int no);
    int update(Member member);
//    int delete(int no);
    int deleteAll(HashMap<String, Object> numbers);
}
