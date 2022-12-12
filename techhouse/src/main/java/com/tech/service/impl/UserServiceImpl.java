package com.tech.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.test.context.BootstrapWith;

import com.tech.mail.MailHandler;
import com.tech.mail.TempKey;
import com.tech.repository.mapper.MemberMapper;
import com.tech.service.interfaces.UserService;
import com.tech.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	MemberMapper memberMapper;
	@Autowired
	JavaMailSender MailSender;
	@Override
	public void memberJoin(UserVO vo) throws Exception{

        //랜덤 문자열을 생성해서 mail_key 컬럼에 넣어주기
        String mail_key = new TempKey().getKey(30,false); //랜덤키 길이 설정
        vo.setMail_key(mail_key);

        //회원가입
		memberMapper.memberJoin(vo);
        memberMapper.updateMailKey(vo);

        //회원가입 완료하면 인증을 위한 이메일 발송
        MailHandler sendMail = new MailHandler(MailSender);
        sendMail.setSubject("[TechHouse 인증메일 입니다.]"); //메일제목
        sendMail.setText(
                "<h1>TechHouse 메일인증</h1>" +
                "<br>TechHouse에 오신것을 환영합니다!" +
                "<br>아래 [이메일 인증 확인]을 눌러주세요." +
                "<br><a href='http://localhost:9000/member/registerEmail?email=" + vo.getEmail() +
                "&mail_key=" + mail_key +
                "' target='_blank'>이메일 인증 확인</a>");
        sendMail.setFrom("sko03kim477@gmail.com", "테크하우스");
        sendMail.setTo(vo.getEmail());
        sendMail.send();
		
	}

	/* 아이디 중복 검사 */
	@Override
	public int idCheck(String memberId) throws Exception {
		
		return memberMapper.idCheck(memberId);
	}

	/* 닉네임 중복 검사 */
	@Override
	public int nameCheck(String membername) throws Exception {
		
		return memberMapper.nameCheck(membername);
	}
	
	/* 로그인 */
	@Override
	public UserVO memberLogin(UserVO vo) throws Exception{
		
		return memberMapper.memberLogin(vo);
		
	}
	
	@Override
	public int memberBlack(String memberId) throws Exception{
		
		return memberMapper.memberBlack(memberId);
		
	}
	
	/* 마이페이지 본인확인 */
	@Override
	public UserVO mypageCK(UserVO vo) throws Exception{
		
		return memberMapper.memberLogin(vo);
		
	}
	
	/* 마이페이지 정보수정 */
	public void memberEdit(UserVO vo) throws Exception{
		
		memberMapper.memberEdit(vo);
		
	}
	
	/* 회원 탈퇴 */
	public void memberDel(UserVO vo) throws Exception{
		
		memberMapper.memberDel(vo);
	}
//	@Override
//	public UserVO getUser(UserVO vo) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public void deleteUser(UserVO vo) {
//		// TODO Auto-generated method stub
//		
//	}

	@Override
	public Boolean phoneAuth(String tel) throws Exception {
		return memberMapper.phoneAuth(tel);
	}

	@Override
	public Boolean phoneAuthOk() throws Exception {
		return memberMapper.phoneAuthOk();
	}
	
	/* 모든 유저 조회 */
	@Override
	public List<UserVO> loadmember() throws Exception{
		return memberMapper.loadmember();
	}
	
	/* 유저 블랙 해지 */
	@Override
	public void successId(String memberId) throws Exception{
		
		memberMapper.successId(memberId);
		
	}
	
	/* 유저 블랙 */
	@Override
	public void failed(String memberId) throws Exception{
		
		memberMapper.failed(memberId);
		
	}
	
	@Override
	public UserVO getInfo(String memberId) throws Exception{
		
		return memberMapper.getInfo(memberId);
		
	}
	
	@Override
	public int updateMailKey(UserVO vo) throws Exception{
		
		return memberMapper.updateMailKey(vo);
		
	}
	
	@Override
	public int updateMailAuth(UserVO vo) throws Exception{
		
		return memberMapper.updateMailAuth(vo);
		
	}
	
	@Override
	public int emailAuthFail(String id) throws Exception{
		
		return memberMapper.emailAuthFail(id);
		
	}
	
	@Override
	public int findid(UserVO vo) throws Exception{
		
		return memberMapper.findid(vo);
		
	}
	
	@Override
	public void chgpw(UserVO vo) throws Exception{
		
        memberMapper.chgpw(vo);
		
	}

}
