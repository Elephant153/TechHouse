<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script>
	alert("해당 이메일로 임시 비밀번호를 발급하였습니다. \n 임시번호로 로그인 후 반드시 비밀번호를 변경하시길 바랍니다.")
	location.href = "/member/login";
</script>