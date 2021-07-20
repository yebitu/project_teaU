<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%
   String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<meta charset="EUC-KR">
<title>Join</title>
<head>

<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Join</title>





<link rel="shortcut icon" href="assets/images/feature/11.jpg">

<!-- fraimwork - css include -->
<link rel="stylesheet" type="text/css"
   href="assets/css/bootstrap.min.css">

<!-- icon font - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

<!-- animation - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/animate.css">

<!-- carousel - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/slick.css">
<link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

<!-- popup - css include -->
<link rel="stylesheet" type="text/css"
   href="assets/css/magnific-popup.css">

<!-- jquery-ui - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css">

<!-- custom - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/style.css">

<style>
.contact_form {
   margin-left: 15%;
   margin-right: 15%;
}

.container .btn {
   display: inline-block
}
</style>



<!-- fraimwork - jquery include -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- animation - jquery include -->
<script src="assets/js/wow.min.js"></script>

<!-- carousel - jquery include -->
<script src="assets/js/slick.min.js"></script>

<!-- popup - jquery include -->
<script src="assets/js/magnific-popup.min.js"></script>

<!-- isotope filter - jquery include -->
<script src="assets/js/isotope.pkgd.min.js"></script>

<!-- google map - jquery include -->
<script
   src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDk2HrmqE4sWSei0XdKGbOMOHN3Mm2Bf-M&ver=2.1.6"></script>
<script src="assets/js/gmaps.min.js"></script>

<!-- jquery-ui - jquery include -->
<script src="assets/js/jquery-ui.js"></script>

<!-- off canvas sidebar - jquery include -->
<script src="assets/js/mCustomScrollbar.js"></script>

<!-- custom - jquery include -->
<script src="assets/js/main.js"></script>

<script src="assets/js/jquery-3.6.0.min.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
   integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
   crossorigin="anonymous"></script>



<!-- 아이디 중복체크 -->
<script type="text/javascript">
      $(document).ready(function() {
         var msg = '<%=msg%>';
   //아이디 중복 시 alert 표출
      if (msg != 'null') {
         alert(msg);
      }
   });
</script>

<!-- 비밀번호 중복체크 -->
<script type="text/javascript">
   $(function() {
      $("#alert-success").hide();
      $("#alert-danger").hide();
      $("input").keyup(function() {
         var pwd1 = $("#pwd1").val();
         var pwd2 = $("#pwd2").val();
         if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
               $("#alert-success").show();
               $("#alert-danger").hide();
               $("#joinsubmit").removeAttr("disabled");
            } else {
               $("#alert-success").hide();
               $("#alert-danger").show();
               $("#joinsubmit").attr("disabled", "disabled");
            }
         }
      });
   });
   function logText() {
      console.log(id);

      if (id == null) {
         $('#logInOut').val('로그인');

      } else { // 이쪽으로 안넘어가는 이유?
         $('#logInOut').val('로그아웃');
      }
   };

   function loginCheck(link) {
      //idc = id;
      console.log(id)
      if (id == null) {
         alert("먼저 로그인 해 주세요")
         location.href = "login.do";
      } else {
         location.href = link;
      }
   };

   function logInOut() {

      if (id == null) {
         location.href = "login.do";
      } else {
         location.href = "logout.do";
      }
   };
   
   function myAndLog() {
      if (id == null) {
         console.log('로그인');
         location.href = "login.do";
      } else if (id != null) {
         console.log('마이페이지');
         location.href = "mypage.do";
      }
   };
   
     // 아이디 중복체크 (false 이면 중복검사 통과못함)
      var memberIdcheck = false;
      
      function confirmId() {
         console.log(111);
         var addr = "memberIdcheck.do";
         // memberId 값 가져옴
         var memberId = document.getElementById("memberId").value;
         // memberId 값을 가지고 중복검사를 위한 ajax요청
         $.ajax({
            url: addr,
            data: {
               'memberId' : memberId
               
            },
            dataType: "json",
            success: function(data){
               if(data.result == true) {
                  document.getElementById("memberIdDiv").innerHTML = "사용가능한 아이디입니다.";
                  document.getElementById("memberIdDiv").style.color='blue';
                  memberIdcheck = true;
               }else {
                  document.getElementById("memberIdDiv").innerHTML = "사용 불가능한 아이디입니다.";
                  document.getElementById("memberIdDiv").style.color='red';
                  memberIdcheck = false;
               }
            }
         });
      }
      
   
   
   
   
   
   
</script>

<!-- 도로명주소 -->
<script language="JavaScript"
   src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"
   charset="UTF-8"></script>
<script charset="utf-8">
   //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
   function sample4_execDaumPostcode() {
      new daum.Postcode(
            {
               oncomplete: function (data) {
                  // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                  // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var roadAddr = data.roadAddress; // 도로명 주소 변수
                  var extraRoadAddr = data.extraRoadAddr; // 참고 항목 변수

                  // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                  // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                  if (data.bname !== null
                              && /[동|로|가]$/g.test(data.bname)) {
                              extraRoadAddr += data.bname;
                           }
                  // 건물명이 있고, 공동주택일 경우 추가한다.
                           if (data.buildingName !== null
                              && data.apartment === 'Y') {
                              extraRoadAddr += (extraRoadAddr !== null ? ', '
                                 + data.buildingName : data.buildingName);
                           }
                           // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                           if (extraRoadAddr !== null) {
                              extraRoadAddr = ' (' + extraRoadAddr + ')';
                           }

                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('sample4_postcode').value = data.zonecode;
                  document.getElementById("sample4_roadAddress").value = roadAddr;
                  //document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                  // 창닫기
                  window.close();

                  // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
/*                   if (roadAddr !== '') {
                     document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                  } else {
                     document.getElementById("sample4_extraAddress").value = '';
                  }

                  var guideTextBox = document.getElementById("guide");
                  // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                  if (data.autoRoadAddress) {
                     var expRoadAddr = data.autoRoadAddress
                           + extraRoadAddr;
                     guideTextBox.innerHTML = '(예상 도로명 주소 : '
                           + expRoadAddr + ')';
                     guideTextBox.style.display = 'block';

                  } else if (data.autoJibunAddress) {
                     var expJibunAddr = data.autoJibunAddress;
                     guideTextBox.innerHTML = '(예상 지번 주소 : '
                           + expJibunAddr + ')';
                     guideTextBox.style.display = 'block';
                  } else {
                     guideTextBox.innerHTML = '';
                     guideTextBox.style.display = 'none';
                  } */
               }
            }).open({
               autoClose: true
            });
   };
</script>

</head>


<body>

   <!-- body_wrap - start -->
   <div class="body_wrap">

      <!-- backtotop - start -->
      <div class="backtotop">
         <a href="#" class="scroll"> <i class="far fa-arrow-up"></i> <i
            class="far fa-arrow-up"></i>
         </a>
      </div>
      <!-- backtotop - end -->

      <!-- preloader - start -->
      <div id="preloader"></div>
      <!-- preloader - end -->

      <!-- header_section - start
      ================================================== -->
      <header class="header_section style_3">
         <div class="content_wrap" style="background-color: #ffffff;">
            <div class="container maxw_1720">
               <div class="row align-items-center">

                  <div class="col-lg-2 col-md-6 col-6">
                     <div class="brand_logo">
                        <a class="brand_link" href="index.jsp">
                         <img src="assets/images/logo/TeaU.png"
                           alt="logo_not_found">
                        </a>
                     </div>
                  </div>

              <div class="col-lg-10 col-md-6 col-6">
                <nav class="main_menu navbar navbar-expand-lg">
                  <button class="mobile_menu_btn navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#main_menu_dropdown" aria-controls="main_menu_dropdown" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"><i class="fal fa-bars"></i></span>
                  </button>
                  <div class="main_menu_inner collapse navbar-collapse" id="main_menu_dropdown">
                    <ul class="main_menu_list ul_li">
                      <li class="active dropdown">
                        <a class="nav-link" href="subscribe_main.do" id="home_submenu">
                          Subscribe
                        </a>
                      </li>
                      <li class="dropdown">
                        <a class="nav-link" href="#" id="portfolio_submenu" role="button" data-bs-toggle="dropdown"
                          aria-expanded="false">
                          shop
                        </a>
                        <ul class="submenu dropdown-menu" aria-labelledby="portfolio_submenu">
                          <li><a href="shopSeason.do">#계절</a></li>
                          <li><a href="shopUser.do">#사용자</a></li>
                          <li><a href="shopBlend.do">#베이스</a></li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a class="nav-link" href="#" id="services_submenu" role="button" data-bs-toggle="dropdown"
                          aria-expanded="false">
                          board
                        </a>
                        <ul class="submenu dropdown-menu" aria-labelledby="services_submenu">
                          <li><a href="toBoard.do">씨앗 리뷰</a></li>
                            <li><a href="tbBoard.do">새싹&나무 리뷰</a></li>
                            <li><a href="rankBoard.do">새싹&나무 랭킹</a></li>
                            <li><a href="faq.do">F.A.Q.</a></li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a class="nav-link" href="magazine.do" id="experience_submenu">
                          Magazine
                        </a>
                      </li>
                      <li>
                        <a class="nav-link" href="tea_finder.do">Tea finder</a>
                      </li>
                    </ul>
                  </div>
  
                  <ul class="header_btns_group ul_li_right">
                    <li>
                      <button type="button" class="main_search_btn">
                        <a class="fal fa-user" onclick="myAndLog()" style="color: black;" ></a>
                      </button>
                    </li>
                    <li>
                      <button type="button" class="cart_btn">
                        <i class="fal fa-shopping-bag"></i>
                        <small class="cart_counter">2</small>
                      </button>
                    </li>
                    <li>
                      <input type="button" id="logInOut" class="btn btn_primary text-uppercase" value="LogIN" onclick="logInOut()">
                    </li>
                  </ul>
                </nav>
              </div>
  
            </div>
          </div>
        </div>

      <!-- collapse search - start -->
      <div class="main_search_collapse collapse" id="main_search_collapse">
        <div class="main_search_form card">
          <div class="container maxw_1560">
            <form action="#">
              <div class="form_item">
                <input type="search" name="search" placeholder="Search here...">
                <button type="submit" class="submit_btn"><i class="fal fa-search"></i></button>
              </div>
            </form>
          </div>
        </div>
      </div>

      <!-- collapse search - start -->
      <div class="main_search_collapse collapse" id="main_search_collapse">
        <div class="main_search_form card">
          <div class="container maxw_1560">
            <form action="#">
              <div class="form_item">
                <input type="search" name="search" placeholder="Search here...">
                <button type="submit" class="submit_btn"><i class="fal fa-search"></i></button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <!-- collapse search - end -->
    </header>
      <!-- header_section - end
      ================================================== -->

      <!-- main body - start
      ================================================== -->
      <main>

         <!-- cart_sidebar - start
        ================================================== -->
         <!-- cart_sidebar - end
        ================================================== -->

         <!-- breadcrumb_section - start
        ================================================== -->
         <section class="breadcrumb_section text-uppercase"
            style="background-image: url(./assets/images/logo/signUp.png);">
         </section>
         <!-- breadcrumb_section - end
        ================================================== -->

         <!-- contact_section - start
        ================================================== -->
         <section class="contact_section sec_ptb_120 bg_default_gray">
            <div class="container">
               <h1 class="text-center">회원가입</h1>
               <div class="contact_form bg_white wow fadeInUp"
                  data-wow-delay=".1s">
                  <form action="insertMember.do" method="post"
                     enctype="multipart/form-data" accept-charset=”EUC-KR”>
                     <div class="row justify-content-center">
                        <div class="row justify-content-center">
                           <div class="col-lg-12">
                              <div class="form_item">
                                  <label for="id">아이디</label> <input type="text"
                                    name="memberId" id= "memberId" placeholder="id를 입력해주세요." value=""  onblur="confirmId()" required="required" />
                               <div id = "memberIdDiv"></div>
                              </div>
                           </div>
                           <div class="col-lg-12">
                              <div class="form_item">
                                 <label for="password">비밀번호</label> <input type="password"
                                    name="memberPass" id="pwd1" placeholder="password를 입력해주세요."
                                    value="">
                              </div>
                           </div>
                           <div class="col-lg-12">
                              <div class="form_item">
                                 <label for="passwordCheck">비밀번호확인</label> <input
                                    type="password" name="rememberPass" id="pwd2"
                                    placeholder="password를 한번 더 입력해주세요." value="">
                              </div>
                           </div>

                           <div class="col-lg-12 alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
                           <div class="col-lg-12 alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>

                           <div class="col-lg-12">
                              <div class="form_item">
                                 <label for="name">이름</label> <input type="name"
                                    name="memberName" placeholder="성함을 입력해주세요." value="">
                              </div>
                           </div>
                           <div class="col-lg-12">
                              <div class="form_item">
                                 <label for="phoneNumber">전화번호</label> <input type="tel"
                                    name="memberPhone"
                                    placeholder="전화번호를 입력해주세요.  예시: 010-0000-0000" value=""
                                    pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}">
                              </div>
                           </div>
                           <div class="col-lg-6">
                              <div class="form_item">
                                 <label for="email">이메일</label> <input type="email"
                                    name="memberEmail" placeholder="이메일을 입력해주세요" value="">
                              </div>
                           </div>
                           <div class="col-lg-6">
                              <div class="form_item">
                                 주소 <input type="text" id="sample4_postcode"
                                    placeholder="우편번호" accept-charset="EUC-KR" readonly>
                                 <label for="adress"></label> <input type="text"
                                    id="sample4_roadAddress" name="memberAddress"
                                    placeholder="주소를 입력해주세요" accept-charset="EUC-KR" readonly>
                                    <input type="text" name="memberAddress" placeholder="상세주소를 입력해 주세요"
                                    accept-charset="EUC-KR">
                                 <button type="button" class="btn btn_primary"
                                    onclick="sample4_execDaumPostcode()">주소검색</button>

                              </div>
                           </div>
                           <!--   <div class="col-lg-12">
                      <div class="form_item">                        
                        <input type="adress" name="adress" placeholder="주소를 입력해주세요.">
                      </div>
                    </div>
                </div> -->
                           <div class="text-center">
                              <button type="submit" id="joinsubmit"  onclick="loginCheck()"
                                 class="btn btn_primary text-uppercase">회원가입</button>
                           </div>
                  </form>
               </div>
            </div>

         </section>
         <!-- contact_section - end
        ================================================== -->

         <!-- google map - start
        ================================================== -->
         <!-- google map - end
        ================================================== -->

      </main>
      <!-- main body - end
      ================================================== -->

      <!-- footer_section - start
      ================================================== -->
      <jsp:include page="footer.jsp"></jsp:include>
      <!-- footer_section - end
      ================================================== -->

   </div>
   <!-- body_wrap - end -->


</body>
</html>