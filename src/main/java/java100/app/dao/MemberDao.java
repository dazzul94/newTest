package java100.app.dao;

import java.util.List;
import java.util.Map;

import java100.app.domain.Member;

public interface MemberDao {
//참고 src77
    int insert(Member member);
    List<Member> findAll(Map<String,Object> params);
    int countAll();
    Member findByNo(int no);
    int update(Member member);
    int delete(int no);
}
