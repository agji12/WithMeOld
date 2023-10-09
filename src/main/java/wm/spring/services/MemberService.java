package wm.spring.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wm.spring.dto.MemberDTO;
import wm.spring.repositories.MemberDAO;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	public int insertMember(MemberDTO dto) {
		return memberDAO.insertMember(dto);
	}
	
}
