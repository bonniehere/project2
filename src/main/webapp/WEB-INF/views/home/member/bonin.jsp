<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="bonin.do" name="frm" id="frm" method="post" autocomplete="off">
	  <legend>휴대폰 본인확인 입력</legend><br>
	 이름 :  <input type="text" name="userName" id="userNm" placeholder="이름 입력" class="checkValue" value=""><br>
	  주민번호 : <input type="text" name="myNum1" id="myNum1" maxlength="6" title="주민등록번호 앞 6자리" class="checkValue" value="" data-enc="on">-
	  <input type="text" name="myNum2" id="myNum2" maxlength="1" title="주민등록번호 7번째 자리" class="checkValue" value="" data-enc="on"><br>
	  휴대폰 번호 : <input type="text" name="mobileNo" id="mobileNo" placeholder="숫자만 입력" title="숫자만 입력" maxlength="11" class="checkValue" value="" data-enc="on"><br>
	   <div class="certi_btn_area">
                    <ul class="btn_area2 bt2">
                        <li><button type="button" id="btnMobileCertMain" class="btn_r btn_type6">취소</button></li>
                        <li><button type="button" id="btnSubmit" class="btn_r btn_type btn_type3">확인</button></li>
                    </ul>
                </div>
</form>
</body>
</html>