<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회원 가입</title>
    <style>
      table {width:100%;margin:auto;padding:2px;border-spacing:0;border:0;border-collapse:collapse;border-top:2px solid#aaa;}
      td { height : 20px; padding : 5px 5px; border-bottom : 1px solid #ddd; }
      th { height : 20px; padding : 5px 5px; border-bottom : 1px solid #ddd; }
      dd { float : left; margin : 0; padding-right : 5px; }
      span { color : #ff1493;}
      .left { float : left; width : 120px; margin : 0; padding : 0; }
      .photo  {width:120px;height:150px;text-align:center;margin:auto;padding:0;border:1px solid#ddd;background:url('bg.gif')no-repeat 50% 50%;}
      .table { margin : 0 0 0 130px; padding : 0;}
    </style>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <script>
      $(function() {
        $( "#birth" ).datepicker({
          dateFormat: 'yy-mm-dd'
        });
      });
    </script>
</head>
<body>
    <h3>회원 가입</h3>
    <form action="./member_proc.jsp" method="post" onsubmit="return Save_Check()">
        <div class='left'>
        <div class='photo'></div>
        <div><p align="center">
            <button type="button" name="button_save" alt="사진등록" onclick="alert('사진등록 하기')">등록</button>
            <button type="button" name="button_delete" alt="사진삭제" onclick="alert('사진삭제 하기')">삭제</button></p>
        </div>
        </div>
        <div class='table'>
            <table align= 'center' border=1 bordercolor=white bordercolorlight=gray ceelspacing = 0 celladding = 0>
                <tr bgcolor=#ececec align=center>
                    <td colspan=2>회원 가입</td>
                </tr>
                <tr>
                    <td bgcolor=#ececec><span>아이디</span></td>
                    <td>
                        <input name="id" type="text" id="id" size=12 maxlength=12 onchange="Input_ID_Check(this)" placeholder="4~12자 영문/숫자">
                        <input type="submit" value="중복체크" onclick="alert('ID 중복체크하기')">
                    </td>
                </tr>
                <tr>
                    <td bgcolor=#ececec><span>비밀번호</span></td>
                    <td><input name="pass" type="password" id="pass" size=12 maxlength=12 placeholder="4~12자 영문/숫자"></td>
                </tr>
                <tr>
                    <td bgcolor=#ececec><span>비밀번호 확인</span></td>
                    <td><input type="password" id="pass2" size=12 maxlength=12 placeholder="4~12자 영문/숫자"></td>
                </tr>
                <tr>
                    <td  bgcolor=#ececec><span>이름</span></td>
                    <td><input name="name" type="text" id="name" size=12 maxlength=12 placeholder="한글만 사용"></td>
                </tr>
                <tr>
                    <td bgcolor=#ececec>별명</td>
                    <td><input name="nickname" type="text" id="nickname" size=12 maxlength=12></td>
                </tr>
                <tr>
                    <td bgcolor=#ececec><span>생년월일</span></td>
                    <td>
                        <input name="birth" type="text" id="birth" readonly>
                        <input type="checkbox">음력
                    </td>
                </tr>
                <tr>
                    <td bgcolor=#ececec>메일주소</td>
                    <td>
                        <input name="email1" type="text" id="email1" size=8 maxlength=8> @
                        <select name="email2" id="email2">
                            <option value="">선택하세요</option>
                            <option value="naver.com">naver.com</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="daum.net">daum.net</option>
                        </select>
                    </td>
                <tr>
                    <td bgcolor=#ececec><span>성별</span></td>
                    <td><input type="radio" name="gender" value="남자">남자
                        <input type="radio" name="gender" value="여자">여자</td>
                </tr>
                </tr>
                <tr>
                    <td bgcolor=#ececec><span>대표연락처</span></td>
                    <td>
                        <select name="tel11" id="tel1">
                            <option value="010" SELECTED>010</option>
                            <option value="011">011</option>
                            <option value="018">018</option>
                        </select> -
                        <input name="tel12" type="text" id="tel2" size=4 maxlength=4> -
                        <input name="tel13" type="text" id="tel3" size=4 maxlength=4>
                    </td>
                </tr>
                <tr>
                    <td bgcolor=#ececec>추가연락처</td>
                    <td>
                        <select name="tel21" >
                          <option value="010" SELECTED>010</option>
                          <option value="011">011</option>
                          <option value="018">018</option>
                        </select> -
                        <input name="tel22" type="text" size=4 maxlength=4> -
                        <input name="tel23" type="text" size=4 maxlength=4>
                    </td>
                </tr>
                    <tr>
                        <td bgcolor=#ececec>주소</td>
                        <td>
                            <input name="add1" type="text" size = 12 maxlength=7>  <img src="btn_search.gif" alt=""><br>
                            <input name="add2" type="text" size = 20 maxlength=15>
                            <input name="add3" type="text" size = 20 maxlength=15>
                        </td>
                    </tr>
                <tr>
                    <td bgcolor=#ececec>메일수신</td>
                    <td><input name="checkmail" type="checkbox">메일을 수신합니다.</td>
                </tr>
            </tr>
                <td bgcolor=#ececec>SMS수신</td>
                <td><input name="checksms" type="checkbox">SMS를 수신합니다.</td>
            </tr>
            </tr>
                <td bgcolor=#ececec>소개</td>
                <td>
                    <textarea name="memo" style="width : 90%" col=50 rows=5></textarea>
                </td>
            </tr>
                <tr>
                    <td bgcolor=#ececec colspan=2 align=center>                        
                        <button type="submit" alt="저장하기">저장</button>
                        <button type="button" alt="취소하기" onclick="Save_Cancel()">취소</button>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <script type="text/javascript">
      function Save_Check() {
         var id_Check = document.getElementById("id");
         var pw_Check = document.getElementById("pass");
         var pw2_Check = document.getElementById("pass2");
         var name_Check = document.getElementById("name");
         var birth_Check = document.getElementById("birth");
         var email1_Check = document.getElementById("email1");
         var email2_Check = document.getElementById("email2");
         var email_value = email1_Check.value + "@" + email2_Check.value;
         var gender_Check = document.getElementsByName("gender");
         var tel1_Check = document.getElementById("tel1");
         var tel2_Check = document.getElementById("tel2");
         var tel3_Check = document.getElementById("tel3");
         var phone_value = tel1_Check.value + "-" + tel2_Check.value + "-" + tel3_Check.value;
         var id= RegExp(/^[a-zA-Z0-9]{4,12}$/);
         var pass= RegExp(/^[a-zA-Z0-9]{4,12}$/);
         var named= RegExp(/^[가-힣]{2,10}$/);
         // var named= RegExp(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/);
         var email = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
         var phone = RegExp(/^(010|011|018)-[0-9]{3,4}-[0-9]{4}$/);

         // ID 확인
         if(id_Check.value == ""){
              alert("아이디를 입력해 주세요");
              id_Check.focus();
              return false;
         }
         if(!id.test(id_Check.value)){
              alert("4~12자리의 대소문자와 숫자를 혼합해서 입력해주세요");
              id_Check.value = "";
              id_Check.focus();
              return false;
         }
         //비밀번호 확인
         if(pw_Check.value == ""){
              alert("패스워드를 입력해 주세요");
              pw_Check.focus();
              return false;
         }
         if(id_Check.value == pw_Check.value){
              alert("아이디와 비밀번호는 달라야 합니다");
              pw_Check.value= "";
              pw_Check.focus();
              return false;
         }
         if(!pass.test(pw_Check.value)){
              alert("4~12자리의 대소문자와 숫자를 혼합해서 입력해주세요");
              pw_Check.value= "";
              pw_Check.focus();
              return false;
         }
         if(pw2_Check.value == ""){
              alert("패스워드 확인을 입력해 주세요");
              pw2_Check.focus();
              return false;
         }
         if(pw_Check.value != pw2_Check.value){
              alert("입력한 두 비밀번호가 다릅니다.");
              pw_Check.value = "";
              pw2_Check.value = "";
              pw_Check.focus();
              return false;
         }
         // 이름 확인
         if(name_Check.value == ""){
              alert("이름을 입력해 주세요");
              name_Check.focus();
              return false;
         }
         if(!named.test(name_Check.value)){
              alert("2~10자리의 한글로 입력해주세요");
              name_Check.value = "";
              name_Check.focus();
              return false;
         }
         // 생일 확인
         if(birth_Check.value == ""){
              alert("생년월일을 입력해 주세요");
              birth_Check.focus();
              return false;
         }
         // eMail 확인
         if(email1_Check.value == "" || email2_Check.value == ""){
              alert("email 이름을 입력해 주세요");
              email1_Check.focus();
              return false;
         }
         if(!email.test(email_value)){
              alert("email 형식에 맞게 입력해 주세요");
              email1_Check.value = "";
              email1_Check.focus();
              return false;
         }
         // 성별 확인
         if(gender_Check[0].checked==false && gender_Check[1].checked==false) {
              alert("성별을 선택해 주세요");
              return false;
         }
         // 전화번호 확인
         if(tel1_Check.value=="" || tel2_Check.value=="" || tel3_Check.value=="") {
              alert("전화번호를 입력해 주세요");
              tel1_Check.focus();
              return false;
         }
         if(!phone.test(phone_value)){
              alert("전화번호 형식에 맞게 입력해 주세요");
              tel2_Check.focus();
              return false;
         }
         return true;
      }

      function Save_Cancel() {
         alert("Save_Cancel")
      }

    </script>

  </body>
</html>
