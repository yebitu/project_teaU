<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>


<script>
	$(function(){
		$("#findBtn").click(function(){
			console.log($("#memberId").val());
			$.ajax({
		
			 /* 	url : "/teau/findpw.do",  */
			 	url : "findPw.do", 
				type : "POST",
				data : {
					'memberId' : $("#memberId").val(),
					'memberEmail' : $("#memberEmail").val()
				},
				success : function(result) {
					alert(result);
				},
			})
		});
	})
</script>
<style type="text/css">
.mybtn{
  width:150px;
  height:40px;
  padding:0;
  display:inline; 
  border-radius: 4px; 
  background: #212529;
  color: #fff;
  margin-top: 20px;
  border: solid 2px #212529; 
  transition: all 0.5s ease-in-out 0s;
}
.mybtn:hover .mybtn:focus {
  background: white;
  color: #212529;
  text-decoration: none;
}

        /* 배경 */

        html,
        .findPw {
          background-image: url(./assets/images/finder/2.jpg);
          background-repeat: no-repeat;
          background-size: cover;
          background-position: center;
        }

        /* 로그인 창 */
        #logreg-forms {
          width: 412px;
          margin: 10vh auto;
          background-color: #ffffff;
          opacity: 0.95;
          box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
          transition: all 0.3s cubic-bezier(.25, .8, .25, 1);
        }


        #logreg-forms form {
          width: 100%;
          max-width: 410px;
          padding: 15px;
          margin: auto;
        }

        #logreg-forms .form-control {
          position: relative;
          box-sizing: border-box;
          height: auto;
          padding: 10px;
          font-size: 16px;
        }

        #logreg-forms .form-control:focus {
          z-index: 2;
        }

        #logreg-forms .form-signin input[type="email"] {
          margin-bottom: -1px;
          border-bottom-right-radius: 0;
          border-bottom-left-radius: 0;
        }

        #logreg-forms .form-signin input[type="password"] {
          border-top-left-radius: 0;
          border-top-right-radius: 0;
        }

        #logreg-forms .social-login {
          width: 390px;
          margin: 0 auto;
          margin-bottom: 14px;
        }

        #logreg-forms .social-btn {
          font-weight: 100px;
          color: whitesmoke;
          width: 190px;
          font-size: 0.9rem;
        }

        #logreg-forms a {
          display: block;
          padding-top: 10px;
          color: #fd6c44;
        }

        #logreg-form .lines {
          width: 200px;
          border: 1px solid red;
        }

        /* 버튼 */

        #logreg-forms button[type="submit"] {
          margin-top: 10px;
        }

        #logreg-forms .form-reset,
        #logreg-forms .form-signup {
          display: none;
        }

        #logreg-forms .form-signup .social-btn {
          width: 210px;
        }

        #logreg-forms .form-signup input {
          margin-bottom: 2px;
        }



      </style>

<title>비밀번호 찾기</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4 w3-auto" style="width: 382px;height: 456.3px;">
			<div class="w3-center w3-large w3-margin-top">
				<h3>비밀번호 찾기</h3>
			</div>
			<div>
				<p>
					<label>아이디</label>
					<input class="w3-input" type="text" id="memberId" name="memberId" placeholder="회원가입한 아이디를 입력하세요" required>
				</p>
				<p>
					<label>이메일</label>
					<input class="w3-input" type="text" id="memberEmail" name="memberEmail" placeholder="회원가입한 이메일주소를 입력하세요" required>
				</p>
				<p class="w3-center">
			      <button type="button" id="findBtn" class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn">찾기</button>   		
				  <button type="button" onclick="location.href='login.do'" class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn">로그인으로</button>
				</p>
			</div>
		</div>
	</div>
</body>
</html>