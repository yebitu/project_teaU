<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<!-- header_section - start -->
<jsp:include page="header.jsp"></jsp:include>

    <!-- header_section - end -->


<head>

<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>mypage_edit</title>
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
<link rel="stylesheet" type="text/css" href="assets/css/teau.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<style>
.container .fas {
   color: #fd6c44;
}

.container .fa-user {
   padding-right: 10%;
}

.btn {
   background-color: #fd6c44;
}

.btn-outline-primary:hover {
	background-color: #eee;
}


#myEdit .table-divider input {
  
  /* border: 2px solid #ffdfd7; */
  border: none;
  padding: 1px;
  
}

input:-internal-autofill-selected {
	background-color: #ffffff;
}


tdody {
	height: 25px
}

th {
	width: 20%;
	vertical-align: middle; 
}

</style>

<script type="text/javascript">
   $(document).ready(function() {

      //???????????? ????????????
      $("#alert-success").hide();
      $("#alert-danger").hide();
      $("input").keyup(function() {
         var pwd1 = $("#pwd1").val();
         var pwd2 = $("#pwd2").val();
         if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
               $("#alert-success").show();
               $("#alert-danger").hide();
               $("#editSubmit").removeAttr("disabled");
            } else {
               $("#alert-success").hide();
               $("#alert-danger").show();
               $("#editSubmit").attr("disabled", "disabled");
            }
         }
      });

   });
</script>
<script language="JavaScript"
   src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"
   charset="UTF-8"></script>
<script charset="utf-8">
   //??? ??????????????? ????????? ?????? ?????? ????????? ?????? ????????? ??????, ???????????? ???????????? ???????????? ????????? ????????? ???????????? ????????? ???????????????.
   function sample4_execDaumPostcode() {
      new daum.Postcode(
            {
               oncomplete : function(data) {
                  // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

                  // ????????? ????????? ?????? ????????? ?????? ????????? ????????????.
                  // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
                  var roadAddr = data.roadAddress; // ????????? ?????? ??????
                  var extraRoadAddr = ''; // ?????? ?????? ??????

                  // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                  // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                  if (data.bname !== '' && /[???|???|???]$/g.test(data.bname)) {
                     extraRoadAddr += data.bname;
                  }
                  // ???????????? ??????, ??????????????? ?????? ????????????.
                  if (data.buildingName !== '' && data.apartment === 'Y') {
                     extraRoadAddr += (extraRoadAddr !== '' ? ', '
                           + data.buildingName : data.buildingName);
                  }
                  // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
                  if (extraRoadAddr !== '') {
                     extraRoadAddr = ' (' + extraRoadAddr + ')';
                  }

                  // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                  document.getElementById('sample4_postcode').value = data.zonecode;
                  document.getElementById("sample4_roadAddress").value = roadAddr;
                  //document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                  // ?????????
                  //window.close();
                  //document.close();

                  // ???????????? ???????????? ?????? ?????? ?????? ????????? ?????????.
/*                   if (roadAddr !== '') {
                     document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                  } else {
                     document.getElementById("sample4_extraAddress").value = '';
                  }

                  var guideTextBox = document.getElementById("guide");
                  // ???????????? '?????? ??????'??? ????????? ??????, ?????? ???????????? ????????? ?????????.
                  if (data.autoRoadAddress) {
                     var expRoadAddr = data.autoRoadAddress
                           + extraRoadAddr;
                     guideTextBox.innerHTML = '(?????? ????????? ?????? : '
                           + expRoadAddr + ')';
                     guideTextBox.style.display = 'block';

                  } else if (data.autoJibunAddress) {
                     var expJibunAddr = data.autoJibunAddress;
                     guideTextBox.innerHTML = '(?????? ?????? ?????? : '
                           + expJibunAddr + ')';
                     guideTextBox.style.display = 'block';
                  } else {
                     guideTextBox.innerHTML = '';
                     guideTextBox.style.display = 'none';
                  } */
               }
            }).open();
   }
</script>


</head>



<!-- main body - start
        ================================================== -->
<!--    <main> -->



<!-- breadcrumb_section - start
        ================================================== 
      <section class="breadcrumb_section text-uppercase"
        style="background-image: url(assets/images/breadcrumb/breadcrumb_bg_01.jpg);">
        <div class="container">
          <h1 class="page_title text-white wow fadeInUp" data-wow-delay=".1s">MY PAGE</h1>
          <ul class="breadcrumb_nav ul_li wow fadeInUp" data-wow-delay=".2s">
          </ul>
        </div>
        <div class="breadcrumb_icon_wrap">
          <div class="container">
            <div class="breadcrumb_icon wow fadeInUp" data-wow-delay=".3s">
              <img src="assets/images/feature/icon_01.png" alt="icon_not_found">
              <span class="bg_shape"></span>
            </div>
          </div>
        </div>
      </section>
      <!-- breadcrumb_section - end
        ================================================== -->

<!-- contact_section - start
        ================================================== -->

<section class="contact_section sec_ptb_120 bg_default_white">
   <!--????????????&?????????-->
   <div class="container">
      <%-- <div class="contact_form bg_white">
            <div class="row">
              <div class="offset-md-1 col-md-3">
                <div class="item_content img-fluid">
                  <h3><i class="fas fa-user"></i>${member.memberId } ??? </h3>
                </div> 
              </div>
              <div class="offset-md-3 col-md-5">
                <div class="item_content">
                  <h3 class="item_title text-uppercase">?????? ????????? : ${member.memberPoint }</h3>
                  <br>
                </div>
              </div>
            </div> 
          </div>--%>
   </div>
   <br>
   <div class="container">
      <div id="myEdit" class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s" style="margin: 5%;" >

         <!-- ?????? ?????? ???????????? -->
         <form action="updateMember.do" method="post">
            <input type="hidden" name="memberId" value="${member.memberId }" />
            <div class="hi container" >
               <div class="hi section" >
                  <form >
                     <div  class="row" style="  box-shadow:0 0 24px 0 rgb(0 0 0 / 8%); padding:5%">
                        <div class="col-sm-12">
                           <h3 style="text-align: center; font-family: 'InfinitySans-RegularA1';">??? ??????</h3>
                           <br>
                           <table class="hi table table-divider" >
                              <tbody>
                                 <tr>
                                    <th class="hi width-xsmall">??????<span
                                       class="hi text-danger">*</span></th>
                                    <td><input type="text" name="memberName"
                                       placeholder="??????" value="${member.memberName }"></td>
                                 </tr>
                                 <tr>
                                    <th class="hi width-xsmall">????????? ??????<span
                                       class="hi text-danger">*</span></th>
                                    <td><input type="email" name="memberEmail"
                                       placeholder="teau@gmail.com" value="${member.memberEmail }"></td>
                                 </tr>
                                 <tr>
                                    <th class="hi width-xsmall">????????????<span
                                       class="hi text-danger">*</span></th>
                                    <td><input type="password" name="memberPass" id="pwd1" style="font-family: 'RIDIBatang';"
                                       placeholder="??????????????? ???????????????" value="${member.memberPass }"></td>
                                 </tr>
                                 <tr>
                                    <th class="hi width-xsmall">???????????? ??????<span
                                       class="hi text-danger">*</span></th>
                                    <td><input type="password" name="rememberPass" style="font-family: 'RIDIBatang';"
                                       id="pwd2" placeholder="???????????? ??????" 
                                       value="${member.memberPass }"></td>
                                 </tr>
                                 <div class="alert alert-success" id="alert-success">??????????????? ???????????????.</div>
                                 <div class="alert alert-danger" id="alert-danger">??????????????? ???????????? ????????????.</div>
                                 <tr>
                                    <th class="hi width-xsmall">????????????<span
                                       class="hi text-danger">*</span></th>
                                    <td><input type="text" name="memberPhone"
                                       placeholder="010-1111-1111" value="${member.memberPhone }" "></td>
                                 </tr>

                                 <tr>
                                    <th class="hi width-xsmall">??????<span class="hi text-danger">*</span>
                                    
                                    </th>
                                    <td>
                                    <!-- ???????????? ??????  -->
                                    <input type="hidden" id="sample4_postcode" placeholder="????????????" accept-charset="EUC-KR" readonly>
                                       <label for="adress"></label>
                                       <input type="text" id="sample4_roadAddress" name="memberAddress"
                                    placeholder="????????? ??????????????????" style="width:250px;border:none;" accept-charset="EUC-KR" value="${member.memberAddress }" readonly>
                                    
                                    <input type="text" name="memberAddress" placeholder="??????????????? ????????? ?????????"
                                    accept-charset="EUC-KR" style="width:250px;border:none;" value="">
                                    <button type="button" class="btn-outline-primary"
                                    onclick="sample4_execDaumPostcode()" style="color:#fd6c44;padding:5px;">????????????</button>
                                       
                                       </td>

                                 </tr>

                                 <!-- <tr>
                                <th class="hi width-xsmall">?????? ?????????</th>
                                <td>2021-05-27</td>
                              </tr> -->
                              </tbody>
                           </table>
                           <div class="submit_btn" style="text-align: center">
                              <button type="submit" id="editSubmit" class="btn btn-primary btn-radio">????????????
                                 ??????</button>
                           </div>
                        </div>
                     </div>
               </div>
         </form>
      </div>


      <!-- <div class="text-center">
                  <button type="submit" class="btn btn_primary text-uppercase">Send massage</button>
                </div> -->
      <!-- </form> -->
   </div>
   </div>
</section>
<!-- contact_section - end
        ================================================== -->

<!-- google map - start
        ================================================== -->
<!-- <div class="map_section">
          <div id="mapBox" class="wow fadeInUp" data-wow-delay=".1s" data-lat="40.701083" data-lon="-74.1522848" data-zoom="12" data-info="PO Box CT16122 Collins Street West, Victoria 8007, Australia." data-mlat="40.701083" data-mlon="-74.1522848">
          </div>
        </div> -->
<!-- google map - end
        ================================================== -->

</main>
<!-- main body - end
      ================================================== -->

<!-- footer_section - start
      ================================================== -->
<!-- <footer class="footer_section text-white deco_wrap" style="background-image: url(assets/images/backgrounds/bg_05.png);">
        <div class="overlay"></div>
        <div class="footer_widget_area">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-5 col-md-6 col-sm-7">
                <div class="footer_subscribe_form text-center">
                  <h2 class="form_title text-uppercase wow fadeInUp" data-wow-delay=".1s">Coffee Build your Fresh mind</h2>
                  <form action="#">
                    <div class="form_item wow fadeInUp" data-wow-delay=".2s">
                      <input type="email" name="email" placeholder="Enter your email">
                      <button class="btn btn_primary text-uppercase" type="submit">Subscribe Now</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>

            <div class="row justify-content-lg-between">
              <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="footer_widget footer_about wow fadeInUp" data-wow-delay=".1s">
                  <div class="brand_logo">
                    <a class="brand_link" href="index.html">
                      <img src="assets/images/logo/logo_white_1x.png" srcset="assets/images/logo/logo_white_2x.png 2x" alt="logo_not_found">
                    </a>
                  </div>

                  <p>
                    Rorem ipsum dolorconsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniaminventore veritatis et.orem ipsum dolorconsectetur adipisicing elit, sed do eiusmod tempor incididunt aneye.
                  </p>

                  <ul class="social_links social_icons ul_li">
                    <li><a href="#!"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#!"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#!"><i class="fab fa-instagram"></i></a></li>
                    <li><a href="#!"><i class="fab fa-youtube"></i></a></li>
                    <li><a href="#!"><i class="fab fa-behance"></i></a></li>
                  </ul>
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="footer_widget footer_contact wow fadeInUp" data-wow-delay=".2s">
                  <h3 class="footer_widget_title text-uppercase">Contact us</h3>
                  <ul class="ul_li_block">
                    <li><strong class="text-uppercase">Adress:</strong> 8638 Amarica Stranfod Mailbon Star</li>
                    <li><strong class="text-uppercase">Mail:</strong> Israfilsupol836@gmail.com</li>
                    <li><strong class="text-uppercase">Phone:</strong> +7464 0187 3535 645</li>
                    <li><strong class="text-uppercase">Fax id:</strong> +9 659459 49594</li>
                  </ul>
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="footer_widget footer_opening_time wow fadeInUp" data-wow-delay=".3s">
                  <h3 class="footer_widget_title text-uppercase">Opening Hours</h3>
                  <ul class="ul_li_block">
                    <li>
                      Monday
                      <span>9:00 - 18:00</span>
                    </li>
                    <li>
                      tuesday
                      <span>10:00 - 18:00</span>
                    </li>
                    <li>
                      wednestday
                      <span>11:00 - 18:00</span>
                    </li>
                    <li>
                      Thusday
                      <span>12:00 - 18:00</span>
                    </li>
                    <li>
                      Friday
                      <span>14:00 - 18:00</span>
                    </li>
                    <li>
                      saterday
                      <span>16:00 - 18:00</span>
                    </li>
                    <li>
                      Sunday
                      <span>closed</span>
                    </li>
                  </ul>
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="footer_widget footer_recent_post wow fadeInUp" data-wow-delay=".4s">
                  <h3 class="footer_widget_title text-uppercase">Recent News</h3>

                  <div class="recent_post">
                    <a class="item_image" href="#!">
                      <img src="assets/images/recent_post/img_01.png" alt="image_not_found">
                    </a>
                    <div class="item_content">
                      <h4 class="item_title">
                        <a href="#!">Best Smell of Americano Coffee Trins</a>
                      </h4>
                      <span class="post_date text-uppercase">December 30 - 2021</span>
                    </div>
                  </div>

                  <div class="recent_post">
                    <a class="item_image" href="#!">
                      <img src="assets/images/recent_post/img_02.png" alt="image_not_found">
                    </a>
                    <div class="item_content">
                      <h4 class="item_title">
                        <a href="#!">Best Smell of Americano Coffee Trins</a>
                      </h4>
                      <span class="post_date text-uppercase">December 30 - 2021</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="container">
          <div class="footer_bottom text-center">
            <p class="copyright_text mb-0 wow fadeInUp" data-wow-delay=".2s">Copyright@ 2021 Desing by <a class="btn_text" href="https://themeforest.net/user/xpressrow"><span>Xpressrow</span></a></p>
          </div>
        </div>
      </footer> -->
       <jsp:include page="footer.jsp"></jsp:include>
<!-- footer_section - end
      ================================================== -->

<!-- body_wrap - end -->

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





</body>

</html>