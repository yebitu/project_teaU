<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>


		<% String data=request.getParameter("data"); %>
  <!doctype html>
  <html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>Tea-finder</title>


    <!------ Include the above in your HEAD tag ---------->

    <link rel="shortcut icon" href="assets/images/feature/11.jpg">

    <!-- fraimwork - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <!-- icon font - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

    <!-- animation - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css">

    <!-- carousel - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

    <!-- popup - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/magnific-popup.css">

    <!-- jquery-ui - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css">

    <!-- custom - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

    <style>
      @font-face {
        font-family: 'JSArirang-Regular';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/JSArirang-RegularA1.woff') format('woff');
        font-weight: normal;
        font-style: normal;
      }

      @font-face {
        font-family: 'ROEHOE-CHAN';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/ROEHOE-CHAN.woff') format('woff');
        font-weight: normal;
        font-style: normal;
      }
      
      @font-face {
    font-family: 'InfinitySans-RegularA1';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

      #finder_detail01 .img-responsive {
        /* margin-left: 20%; */
      }

      #finder_detail02 .img-responsive,
      #finder_detail03 .img-responsive {
        /* margin-left: 29%; */
      }


      #finder_detail04 .ul_li_center {
        margin-left: 0px;
        margin-right: 0px;
        margin-top: 50px;
        margin-bottom: 30px;

      }

      #finder_detail05 .img-responsive {
        /* margin-left: 13%; */
      }

      #finder_detail05 .finder_choice {
        margin-top: 20px;
      }

      .btn {
        background-color: #fd6c44;
        font-size:18px;

      }

      .finder_detail .img-responsive {
        width: 200px;
      }

      .finder_detail .btn-radio {
        width: 100%;
        align-content: center;
        background-color: #fd6c44;
        font-size: large;

      }

      .finder_detail .img-radio {
        opacity: 0.5;
        margin-top: 50px;
        margin-bottom: 30px;
      }

      .finder_detail .space-20 {
        margin-top: 20px;
      }

      .finder_detail .check {
        opacity: 0.5;
        color: #996;

      }

      .finder_detail .answer ul {
        margin: 50px;


      }
      .finder_detail .answer li {
        list-style: none;
        display: inline-block;
        font-size: 1.4rem;
        margin-bottom: 50px;

      }

      .form_element {
        margin-top: 50px;
        margin-left: 30px;
      }


      /* 결과창 */
      .finder_result .list_wrap {
        position: relative;
        padding: 20px 20px;
        height: 100%;

      }

      .finder_result .list_wrap>ul {
        display: flex;
        flex-wrap: wrap;
        margin: 0 -15px;
      }

      .finder_result .list_wrap>ul>li {
        /* position: relative; */
        float: left;
        width: 30%;
        margin: 10px 10px;
        padding: 0 22px;
        border-radius: 1px;
        border: 1px solid #fff;
        background-color: #fff;
        box-shadow: 0 0 24px 0 rgb(0 0 0 / 8%);
        text-align: center;
        vertical-align: top;
      }

      .finder_result .list_wrap>ul>li>div {
        overflow: hidden;
        height: 100%;
        background-color: #fff;
        border-radius: 4px;
      }


      .tea_goods .t_img {
        margin: 20px 0 16px;
      }

      .tea_goods .t_name {
      	font-family: 'InfinitySans-RegularA1';
        padding: 5px 15px;
        display: block;
        margin: 5px 0 10px;
        font-size: 18px;
        font-weight: normal;
      }

      .tea_goods .t_explain {
        font-size: 14px;
        color: #aaa;
      }

      .tea_goods .keyword {
        display: inline-block;
        margin: 20px 1px 3px;
        padding: 1px 10px 0;
        border: 2px solid #eee;
        font-size: 15px;
        color: black;
        background: #fff;
        vertical-align: top;
      }

      .tea_goods .keyword .jamong {
        border: 1px solid #fd6c44;
        background: #fd6c44;
        color: #fff;
      }
      
      .btn-primary{
      	font-size: 18px;
      
      }
      
      .btn-primary .question2:hover{
      	border-color:#fd6c44;
      }
      
      label.btn.btn-primary.active{
          background: red;
          
      }
      
      .finder_content {
      text-align: center;
      
      }
      
      .contact_form {
        border: 1px solid rgba(0,0,0,.125);
        border-radius: .25rem;
      
      }
      
      .ul_li_center {
      
      display: inline;
      margin-left: 0px;
      
      }
      
      
   
    </style>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Sacramento&display=swap" rel="stylesheet">
	
	<script>
	
	$(document).ready(function(){
		
	 	$('input:checkbox[name="tagUser"]').click(function (e) {
	 		$('input:checkbox[name="tagUser"]').checked = false;
	 		$('input:checkbox[name="tagUser"]').parent().removeClass('active').siblings('.img-radio').css('opacity', '0.3');
	 		this.checked = true;
	 		$(this).parent().addClass('active').siblings('.img-radio').css('opacity', '1');
	    }); 
	 	
		$('input:checkbox[name="tagDrink"]').click(function (e) {
	 		$('input:checkbox[name="tagDrink"]').checked = false;
	 		$('input:checkbox[name="tagDrink"]').parent().removeClass('active').siblings('.img-radio').css('opacity', '0.3');
	 		this.checked = true;
	 		$(this).parent().addClass('active').siblings('.img-radio').css('opacity', '1');
	    }); 
		
		$('input:checkbox[name="tagCaff"]').click(function (e) {
	 		$('input:checkbox[name="tagCaff"]').checked = false;
	 		$('input:checkbox[name="tagCaff"]').parent().removeClass('active').siblings('.img-radio').css('opacity', '0.3');
	 		this.checked = true;
	 		$(this).parent().addClass('active').siblings('.img-radio').css('opacity', '1');
	    }); 
		
		$('input:checkbox[name="tagSeason"]').click(function (e) {
	 		$('input:checkbox[name="tagSeason"]').checked = false;
	 		$('input:checkbox[name="tagSeason"]').parent().removeClass('active').siblings('.img-radio').css('opacity', '0.3');
	 		this.checked = true;
	 		$(this).parent().addClass('active').siblings('.img-radio').css('opacity', '1');
	    }); 
 

		
		
		 $("#question2").hide();
		 $("#question3").hide();
		 $("#question4").hide();
	
		 
		 $(".question2").click(function(){
			  $("#question2").show();
		  });
		  
		  $(".question3").click(function(){
			  $("#question3").show();
		  });
		  
		  $(".question4").click(function(){
			  $("#question4").show();
		  });
		  
		
		  
		  
		});
	/////////////////////////  document ready 끝부분
	
	function checkbox() {
		if ($("input:checkbox[name=tagUser]").is(":checked") == false) {
			alert("누구 신지 알려주세요");
			return false;
		} else if ($("input:checkbox[name=tagDrink]").is(":checked") == false) {
			alert("선호하는 차의 스타일을 선택해주세요");
			return false;
		} else if ($("input:checkbox[name=tagCaff]").is(":checked") == false) {
			alert("카페인 유무의 선호도를 선택해주세요");
			return false;
		} else if ($("input:checkbox[name=tagSeason]").is(":checked") == false) {
			alert("어울리는 계절을 선택해 주세요");
			return false;
		} else {
			console.log("finder ajax start");
			  
			  $.ajax({
	              type: 'POST',
	              url: "teaFinder.do",
	              dataType: 'json',
	              data: $('#finderForm').serialize(),
	              
	              success: function(data) {
	            	  
	            	  //fin_check
	            	  console.log("finder ajax complete");
	            	  console.log(data);
	            	  
	            	  $('#modalResult').html();
	            	  var html = '';
	            	  html += '<div class="list_wrap" >';
        			  html += '<ul style="list-style: none;">';
	            	  
	            	  	if(data['teaFinderList'].length!=0){
			            	  for(var i = 0; i < data['teaFinderList'].length; i++) {
			            		  console.log(1111);
			            		  if(i == 0) {
			            			  
			            		  }
			            	
			            		  
			            		  html += '<li class="tea_goods" style="min-height: 350px; cursor: pointer">';
			            		  html += '	<div>';
			            		  html += '		<div class="keyword">';
			            		  html += '			<span>';
			            		  html += 				data['teaFinderList'][i].tagBase;
			            		  html += '			</span>';
			            		  html += '		</div>';
			            		  html += '		<div class="t_img">';	
			            		  html += ' 	<a class="item_image" href="shopDetails.do?teaId=';
			            		  html +=			data['teaFinderList'][i].teaId;
			            		  html += '			">';
			            		  html += '			<img src="resource/imgUpload/';
			            		  html += 			data['teaFinderList'][i].teaImg;
			            		  html += '			" alt="상품명1" style="height: 250px;">';
			            		  html += '			</a>';	
			            		  html += '		</div>';
			            		  html += '		<div class="t_name">';
			            		  html += '			<strong class="name">';
			            		  html += 				data['teaFinderList'][i].teaName;
			            		  html += '			</strong>';
			            		  html += '		</div>';
			            		  html += '	</div>';
			            		  html += '	</li>';
			            		  html += '	<br/>';
			            		  if(i == data['teaFinderList'].length - 1) {
			            		
			            		  }
			            	 }
			            	  html += '</ul>';
			            	  html += '</div>';
	            			  
            	  		} else {
	                           alert("현재 등록되지 않은 태그 리스트 입니다. 다른 태그를 골라주세요!");
	                           window.location.href = "tea_finder.do";
	                      }
	            	  $('#modalResult').append(html);
	            	  
				      $("#popup").css('display', 'flex').hide().fadeIn();

				      $("#close").click(function () {
				    	  $("#popup").fadeOut();
				      });
	                 
	              }, 
	              error: function(e) {
	                 console.log(e);
	              }
	           });
			
			// 모달 
			   
		}
	}

	</script>

  </head>


  <body>

      <!-- header_section - start
      ================================================== -->
      <jsp:include page="header.jsp"></jsp:include>
      <!-- cart_sidebar - end
        ================================================== -->

  
      <section class="breadcrumb_section text-uppercase" style="background-image: url(assets/images/img/banner02.png);">
        <div class="container">
          <h1 class="page_title text-white wow fadeInUp"><span style="color: white;">Tea finder</span></h1>
        </div>
        <div class="breadcrumb_icon_wrap">
          <div class="container">
            <div class="breadcrumb_icon wow fadeInUp" data-wow-delay=".3s">
              <img src="assets/images/feature/11.jpg" alt="icon_not_found" width="50px">
              <span class="bg_shape"></span>
            </div>
          </div>
        </div>
      </section>
     

      <!-- about_section - start
        ================================================== -->

      <!-- about_section - end                ================ input type checkbox, 클릭된 것만 css 먹이기 
        ================================================== -->
     
	  
	  <!-- <form action="teaFind.do" method="post"> -->
      <!-- 티 파인더 선택지 -->
      <section class="contact_section sec_ptb_120">
      <form id="finderForm" method="get">
      
         <!-- 1번 질문  -->
        <div id="question1" class="container finder_detail q1">
          <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
            <div class="finder_inner box" id="finder_detail01">
              <div class="finder_content">
                <div class="row">
                      <h4>당신은 어떤 사람인가요?</h4>
                    
                      <div class="finder_choice col-md-3 col-xs-3 ">
                        <img src="resource/imgUpload/finder/student.png" class="img-responsive img-radio ul_li_center"
                          style="height: 200px;">
                          
							<label class="btn btn-primary question2" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagUser" value="학생"/> 학생
							</label>
					
                        <!-- <input type="checkbox" id="left-item" class="hidden" style="display:none" name="tagUser" />
                        <button type="button" class="btn btn-primary btn-radio question2">적게 마심</button> -->
                      </div>
                      
                      <div class="finder_choice col-md-3 col-xs-3">
                        <img src="resource/imgUpload/finder/salaryman.png" class="img-responsive img-radio ul_li_center"
                          style="height: 200px; ">
                          
                        <label class="btn btn-primary question2" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagUser" value="직장인"/> 직장인
							</label>
                        
                      </div>
                      
                      <div class="finder_choice col-md-3 col-xs-3">
                        <img src="resource/imgUpload/finder/oldman.png" class="img-responsive img-radio ul_li_center"
                          style="height: 200px; ">
                        <label class="btn btn-primary question2" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagUser" value="어르신"/> 어르신
					    </label>
                      </div>
                      
                       <div class="finder_choice col-md-3 col-xs-3">
                        <img src="resource/imgUpload/finder/pragnant.png" class="img-responsive img-radio ul_li_center"
                          style="height: 200px; ">
                        <label class="btn btn-primary question2" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagUser" value="임산부"/> 임산부
					    </label>
                      </div>
                      
                  </div>
               </div>
             </div>
           </div>
         </div>
         
          <div>
            <br>
          </div>

          <!-- 2번 질문  -->
          <div id="question2" class="container finder_detail q2">
            <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
              <div class="finder_inner box" id="finder_detail02">
                <div class="finder_content">
                  <div class="row">

                    <h4>좋아하는 차 스타일은?</h4>
                    <div class="finder_choice col-md-3 col-xs-3 ">
                      <img src="resource/imgUpload/finder/hot.jpg" class="img-responsive img-radio ul_li_center"
                        style="height: 200px; ">
                        <label class="btn btn-primary question3" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagDrink" value="핫티"/> 핫
					    </label>                  
                    </div>
                    
                    <div class="finder_choice col-md-3 col-xs-3">
                      <img src="resource/imgUpload/finder/ice.jpg" class="img-responsive  img-radio ul_li_center"
                        style="height: 200px; ">
                       <label class="btn btn-primary question3" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagDrink" value="아이스티"/> 아이스
					    </label>      
                    </div>
                    
                      <div class="finder_choice col-md-3 col-xs-3">
                      <img src="resource/imgUpload/finder/milktea.png" class="img-responsive  img-radio ul_li_center"
                        style="height: 200px; ">
                       <label class="btn btn-primary question3" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagDrink" value="밀크티"/> 밀크티
					    </label>      
                    </div>
                    
                      <div class="finder_choice col-md-3 col-xs-3">
                      <img src="resource/imgUpload/finder/water.png" class="img-responsive  img-radio ul_li_center"
                        style="height: 200px; ">
                       <label class="btn btn-primary question3" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagDrink" value="식수대용"/> 식수대용
					    </label>      
                    </div>
                    
                 </div>
               </div>
              </div>
             </div>
            </div>

          <div>
            <br>
          </div>

          <!-- 3번 질문  -->
          <div id="question3" class="container finder_detail q3">
            <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
              <div class="finder_inner box" id="finder_detail03">
                <div class="finder_content">
                  <div class="row">

                    <h4>카페인 취향</h4>
                    <div class="finder_choice col-md-6 col-xs-6">
                      <img src="resource/imgUpload/finder/caffeine.png" class="img-responsive img-radio ul_li_center"
                        style="height: 200px; ">
                         <label class="btn btn-primary question4" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagCaff" value="카페인"/> 카페인 좋아
					    </label>                       
                    </div>
                    
                    <div class="finder_choice col-md-6 col-xs-6">
                      <img src="resource/imgUpload/finder/decaffeine.png" class="img-responsive  img-radio ul_li_center"
                        style="height: 200px; ">
                     <label class="btn btn-primary question4" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagCaff" value="디카페인"/> 디카페인
					    </label>     
                    </div>
                    
                </div>
               </div>
              </div>
             </div>
            </div>
  
          <div>
            <br>
          </div>



        <!-- 4번 질문  -->
        <div id="question4" class="container finder_detail q4">
          <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
            <div class="finder_inner box" id="finder_detail04">
              <div class="finder_content">
                <div class="row">
                
                  <h4>지금은 어떤 계절인가요?</h4>
                  <div class="finder_choice col-md-3 col-xs-3 ">
                    <img src="resource/imgUpload/finder/spring.png" class="img-responsive img-radio"
                      style="height: 200px; ">
                       <label class="btn btn-primary" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagSeason" value="봄"/> 봄
					   </label>     
                
                  </div>
                  
                  <div class="finder_choice col-md-3 col-xs-3">
                    <img src="resource/imgUpload/finder/summer.png" class="img-responsive  img-radio ul_li_center"
                      style="height: 200px; ">
                 	  <label class="btn btn-primary" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagSeason" value="여름"/> 여름
					  </label>    
                  </div>
                  
                  <div class="finder_choice col-md-3 col-xs-3">
                    <img src="resource/imgUpload/finder/fall.png" class="img-responsive  img-radio ul_li_center"
                      style="height: 200px; ">
                     <label class="btn btn-primary" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagSeason" value="가을"/>가을
					 </label>    
                  </div>
                  
                  <div class="finder_choice col-md-3 col-xs-3">
                    <img src="resource/imgUpload/finder/winter.png" class="img-responsive  img-radio ul_li_center"
                      style="height: 200px; ">
                     <label class="btn btn-primary" style="width:100%;">
								<input type="checkbox" id="left-item" style="display:none" class="check" name="tagSeason" value="겨울"/> 겨울
					 </label>    
                  </div>
                  
             </div>
            </div>
           </div>
          </div>
         </div>

      

        <div>
          <br>
        </div>

        <div class="poll_step_btns" style="text-align: center;">
          <button id="result" type="button" onclick="checkbox()" class="btn btn_primary text-uppercase">티 파인더 결과보기</button>
        </div>
        </form>
	</section>
    <!-- </form> -->
   
      <div class="container finder_result">
          <div class="popup-wrap" id="popup">
            <div class="popup">
                <div class="popup-body">
                <div class="body-content">
                  <div class="body-titlebox" >
                    <h1>티 파인더가 고객님께 추천하는 차</h1>                                         
                  </div>
                  
                  <div class="body-contentbox" id="modalResult" style="margin-top: 50px;">
					
	              
             
                  
                  </div>


               
                </div>
                </div>
              
              <div class="popup-foot">
                <span class="pop-btn close" id="close" onclick="location.href='tea_finder.do'">닫기</span>
              </div>
            </div>
          </div>
          </div>
        
      
<!--         결과 창
        <div class="container finder_result">

          <div class="title text-center">
            <h1>Tea for U</h1>
            <p>티 파인더가 <span>ㅇㅇ</span>님에게 추천하는 차</p>
          </div>
          <div class="content">
            <div class="list_wrap">
              <ul style="list-style: none;">
                <li class="tea_goods" style="min-height: 350px; cursor: pointer" onclick="location.href='#'">
                  <div>
                    <div class="keyword">
                      <span>녹차</span>
                    </div>
                    <div class="t_img">
                      <img src="./assets/images/img/peach.jpg" alt="상품명1">
                    </div>
                    <div class="t_name">
                      <strong class="name">화이트피치 그린티</strong>
                      <p class="t_explain">복숭아 향 가득한 녹차</p>

                    </div>
                  </div>
                </li>
                <li class="tea_goods" style="min-height: 350px; cursor: pointer" onclick="location.href='#'">
                  <div>
                    <div class="keyword">
                      <span>홍차</span>
                    </div>
                    <div class="t_img">
                      <img src="./assets/images/img/sweet.jpg" alt="상품명1">
                    </div>
                    <div class="t_name">
                      <strong class="name">웨딩임페리얼</strong>
                      <p class="t_explain">달콤한 초콜릿과 바닐라향이 밀크티에 제격인 홍차</p>

                    </div>
                  </div>
                </li>
                <li class="tea_goods" style="min-height: 350px; cursor: pointer" onclick="location.href='#'">
                  <div>
                    <div class="keyword">
                      <span>허브티</span>
                    </div>
                    <div class="t_img">
                      <img src="./assets/images/img/lemon.jpg" alt="상품명1">
                    </div>
                    <div class="t_name">
                      <strong class="name">허니 레모네이드</strong>
                      <p class="t_explain">달콤상큼한 레몬허브티</p>

                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div> -->


	    <!-- main body - end
	      ================================================== -->

	    <!-- footer_section - start
	      ================================================== -->
	     <jsp:include page="footer.jsp"></jsp:include>
	    <!-- footer_section - end
	      ================================================== -->
    
	
	
	  <!-- custom - jquery include -->
	  
	   <!--<script src="assets/js/main.js"></script>
	  <script src="assets/js/finder.js"></script>-->
    
  </body>

  </html>