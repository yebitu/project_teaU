<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String data = request.getParameter("data");
%>

<!doctype html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Subscribe - Seed</title>
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
<style>
.header_section {
	background-color: white;
}
</style>


</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>


	<!-- breadcrumb_section - start
        ================================================== -->
	<section class="breadcrumb_section text-uppercase"
		style="background-image: url(assets/images/breadcrumb/seed.jpg);">
		<div class="container">
			<h1 class="page_title text-white wow fadeInUp" data-wow-delay=".1s">씨앗구독</h1>
			<ul class="breadcrumb_nav ul_li wow fadeInUp" data-wow-delay=".2s">
				
			</ul>
		</div>
		<div class="breadcrumb_icon_wrap">
			<div class="container">
				<div class="breadcrumb_icon wow fadeInUp" data-wow-delay=".3s">
					<img src="assets/images/feature/11.jpg" alt="icon_not_found"
						width="50px">
					<!--지금 커피아이콘 => 씨앗아이콘으로-->
					<span class="bg_shape"></span>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb_section - end
        ================================================== -->
	<main>
		<!-- reserve_table_section - start
        ================================================== -->
		<section class="reserve_table_section sec_ptb_120 subSeedContainer">
			<div class="container " id="subSeed">
				<div class="reserve_table_form wow fadeInUp" data-wow-delay=".1s" style="box-shadow: 0px 0px 5px 5px rgb(236, 236, 236);">
					<h2 class="form_title text-center text-uppercase su subSeed"
						style="font-size: 35px; margin-bottom: 75px;">원하는 항목을 골라보세요(중복 가능)</h2>

					<form action="insertSubSeed.do" id="insertForm" method="POST">
						<input type="hidden" id="subUser" name="subUser"
							value="${member.memberId}" /> <input type="hidden" id="subCheck"
							name="subCheck" value="${member.memberSub}" />
						<div class="row justify-content-center">


							<!--나눠놓은 기준은 행 단위-->

							<div class="col-lg-2"></div>
							<div class="col-lg-8 sub_leaf_title" style="margin-bottom: 25px;">
								맛</div>
							<div class="col-lg-2"></div>

							<div class="col-lg-3"></div>
							<div class="col-lg-3 sub_seed">

								<input class="inp-cbx" type="checkbox" id="mint" name="tagTaste"
									value="시원한맛" /> <label class="cbx" for="mint"><span>
										<svg width="12px" height="10px">
                        <use xlink:href="#check"></use>
                      </svg>
								</span><span>시원한맛</span></label> <br /> <input class="inp-cbx" type="checkbox"
									id="mate" name="tagTaste" value="떫은맛" /> <label class="cbx"
									for="mate"><span> <svg width="12px"
											height="10px">
                        <use xlink:href="#check"></use>
                      </svg></span><span>떫은맛</span></label> <br /> <input class="inp-cbx"
									type="checkbox" id="earlGray" name="tagTaste" value="구수한맛" />
								<label class="cbx" for="earlGray"><span> <svg
											width="12px" height="10px">
                        <use xlink:href="#check"></use>
                      </svg></span><span>구수한맛</span></label>

							</div>
							<div class="col-lg-1"></div>
							<div class="col-lg-3 sub_seed">
								<input class="inp-cbx" type="checkbox" id="sweet"
									name="tagTaste" value="단맛" /> <label class="cbx" for="sweet"><span>
										<svg width="12px" height="10px">
                        <use xlink:href="#check"></use>
                      </svg>
								</span><span>단맛</span></label> <br /> <input class="inp-cbx" type="checkbox"
									id="sour" name="tagTaste" value="신맛" /> <label class="cbx"
									for="sour"><span> <svg width="12px"
											height="10px">
                        <use xlink:href="#check"></use>
                      </svg></span><span>신맛</span></label>
							</div>

							<div class="col-lg-1"></div>

							<div class="col-lg-12"></div>
							<!--  <div class="col-lg-2"></div>
                <div class="col-lg-8">
                   <hr size="3" noshade>
                </div>
                <div class="col-lg-2"></div> -->


							<div class="col-lg-2"></div>
							<div class="col-lg-8 sub_leaf_title"
								style="margin-bottom: 30px; margin-top: 20px;">카페인</div>
							<div class="col-lg-2"></div>

							<div class="col-lg-3"></div>
							<div class="col-lg-3 sub_seed">
								<input class="inp-cbx" type="checkbox" id="caffeine"
									name="tagCaff" value="카페인" /> <label class="cbx"
									for="caffeine"><span> <svg width="12px"
											height="10px">
                        <use xlink:href="#check"></use>
                      </svg></span><span>카페인</span></label>
							</div>
							<div class="col-lg-1"></div>

							<div class="col-lg-3 sub_seed">
								<input class="inp-cbx" type="checkbox" id="decaffeine"
									name="tagCaff" value="디카페인" /> <label class="cbx"
									for="decaffeine"><span> <svg width="12px"
											height="10px">
                        <use xlink:href="#check"></use>
                      </svg></span><span>디카페인</span></label>
							</div>
							<div class="col-lg-1"></div>

							<div class="col-lg-2"></div>
							<div class="col-lg-8">
								<!--    <hr size="3" noshade> -->
							</div>
							<div class="col-lg-2"></div>

							<div class="col-lg-2"></div>
							<div class="col-lg-8 sub_leaf_title"
								class="col-lg-8 sub_leaf_title"
								style="margin-bottom: 20px; margin-top: 20px;">효능</div>
							<div class="col-lg-2"></div>

							<div class="col-lg-3"></div>
							<div class="col-lg-3 sub_seed">
								<input class="inp-cbx" type="checkbox" id="heart"
									name="tagEffect" value="심신안정" /> <label class="cbx"
									for="heart"><span> <svg width="12px"
											height="10px">
                        <use xlink:href="#check"></use>
                      </svg></span><span>심신안정</span></label> <br /> <input class="inp-cbx"
									type="checkbox" id="hBody" name="tagEffect" value="활력" /> <label
									class="cbx" for="hBody"><span> <svg width="12px"
											height="10px">
                        <use xlink:href="#check"></use>
                      </svg></span><span>활력</span></label>
							</div>
							<div class="col-lg-1"></div>

							<div class="col-lg-3 sub_seed">
								<input class="inp-cbx" type="checkbox" id="health"
									name="tagEffect" value="건강" /> <label class="cbx" for="health"><span>
										<svg width="12px" height="10px">
                        <use xlink:href="#check"></use>
                      </svg>
								</span><span>건강</span></label>
							</div>
							<div class="col-lg-1"></div>

							<div class="text-center">
								<br /> <br /> <br /> <input type="button" id="btn_subSubmit"
									class="btn btn_primary text-uppercase" onclick="inOrUp()"></input>
							</div>
						</div>
						<!--SVG Sprites-->
						<svg class="inline-svg">
                <symbol id="check" viewbox="0 0 12 10">
                  <polyline points="1.5 6 4.5 9 10.5 1"></polyline>
                </symbol>
              </svg>
						<!-- partial -->
					</form>
					<!--여기 위 부분을 수정-->

					<div class="decoration_icon">
						<img src="assets/images/feature/11.jpg" alt="icon_not_found"
							width="50px"> <span class="bg_shape"></span>
					</div>
				</div>
				<div class="reserve_banner_image wow fadeInUp" data-wow-delay=".3s">
					<img src="assets/images/reserve/seed_bottom.jpg"
						alt="image_not_found">
				</div>
			</div>
		</section>
		<!-- reserve_table_section - end
        ================================================== -->
	</main>
	<!-- main body - end
      ================================================== -->


	
	   <script type="text/javascript"
      src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
   <script type="text/javascript"
      src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
	<script>
		$(document).ready(function() {
			var data =
	<%=data%>
		;
			console.log(data);
			if (data != null) {
				var obj = JSON.parse(data); // string -> JSON
				console.log(obj);
				var tagTaste = obj['subInfo'].tagTaste.split(',');  //subInfo = 구독vo 전부..!를 가져와서 tagTaste에 배열로 저장
				var tagCaff = obj['subInfo'].tagCaff.split(',');
				var tagEffect = obj['subInfo'].tagEffect.split(',');

				$('input:checkbox[name="tagTaste"]').each(function() {
					for (var i = 0; i < tagTaste.length; i++) {
						if (this.value == tagTaste[i]) {
							this.checked = true;
						}
					}
				});
				$('input:checkbox[name="tagCaff"]').each(function() {
					for (var i = 0; i < tagCaff.length; i++) {
						if (this.value == tagCaff[i]) {
							this.checked = true;
						}
					}
				});
				$('input:checkbox[name="tagEffect"]').each(function() {
					for (var i = 0; i < tagEffect.length; i++) {
						if (this.value == tagEffect[i]) {
							this.checked = true;
						}
					}
				});
			}

			// insert, update 버튼 구분
			if (data == null) {
				$('#btn_subSubmit').val('씨앗 구독 신청');
			} else {
				$('#btn_subSubmit').val('씨앗 구독 수정');

			}
		});

		// insert , update 경로 구분
		function inOrUp() {
			let subCheck = $('#subCheck').val();
			let data =
	<%=data%>;
		// data는 구독정보 (세션에 담긴걸 뽑아온거임)
			if (data == null) {
				if (subCheck == 1) {
					alert("이미 구독중인 상품이 있습니다.");
					location.href="index.jsp";
				}else {
					// 사용자가 보낸 정보가 없으면 insert
					var insert = 'insertSubSeed.do';
					checkbox(insert);
				}

			} else {
				// 사용자가 보낸 정보가 있으면 update
				var update = 'updateSubSeed.do';
				checkbox(update);
			}
		}
		
		
/* 기존 */
/* 		function checkbox(inOrUp) {
			if ($("input:checkbox[name=tagTaste]").is(":checked") == false) {
				alert("맛을 하나 이상 선택해주세요");
				return false;
			} else if ($("input:checkbox[name=tagCaff]").is(":checked") == false) {
				alert("카페인종류를 하나 이상 선택해주세요");
				return false;
			} else if ($("input:checkbox[name=tagEffect]").is(":checked") == false) {
				alert("효능을 하나 이상 선택해주세요");
				return false;
			} else {
				$.ajax({
					type : 'POST',
					url : inOrUp,
					dataType : 'text',// form에 있는 데이터들을 controller로 text타입으로 
					data : $('#insertForm').serialize(),
					success : function(data) {
						alert(data);
						window.location.href = ("mypage.do"); //JSP 이동 페이지 적기  
					},
					error : function(e) {
						console.log(e);
					}
				});
			}
		} */
		
		/* 구매 */
		function checkbox(inOrUp) {
			if ($("input:checkbox[name=tagTaste]").is(":checked") == false) {
				alert("맛을 하나 이상 선택해주세요");
				return false;
			} else if ($("input:checkbox[name=tagCaff]").is(":checked") == false) {
				alert("카페인종류를 하나 이상 선택해주세요");
				return false;
			} else if ($("input:checkbox[name=tagEffect]").is(":checked") == false) {
				alert("효능을 하나 이상 선택해주세요");
				return false;
			} else {
				console.log(11111);
				checkModule();
			}
		}
		
	
		
		
	      /* $("#check_module").click(function(){ */
        
	      
	      function checkModule() {
	    	  console.log(2222);
	    	  var Imp = window.IMP;
	   
	      //let Imp = window.IMP;
	      IMP.init('imp45072851');
	      
	      IMP.request_pay({
	          pg : 'kakaopay', // version 1.1.0부터 지원.
	          pay_method : 'kakaopay',
	          merchant_uid : "${sub.subDate}",
	          name : '"${sub.orderCate}"구독 결제', // 상품명
	          amount : "100", 
	          buyer_email : "${member.memberEmail}", // 구매자 이메일
	          buyer_name : "${member.memberName}", // 구매자 이름
	          buyer_tel : "${member.memberPhone}", // 구매자 연락처
	          buyer_addr : "${member.memberAddress}", // 구매자 주소
	      }, function(rsp) {
	          if ( rsp.success ) {
	             
	                    var msg = '결제가 완료되었습니다.';
	                    msg += '고유ID : ' + rsp.imp_uid;
	                    msg += '상점 거래ID : ' + rsp.merchant_uid;
	                    msg += "가격:" + rsp.paid_amount;
	                    msg += '카드 승인번호 : ' + rsp.apply_num;
	                    
	                    
	                    //업데이트는 따로 분기처리하면 됨
	                    $.ajax({
	    					type : 'POST',
	    					url : 'insertSubSeed.do',
	    					dataType : 'text',// form에 있는 데이터들을 controller로 text타입으로 
	    					data : $('#insertForm').serialize(),
	    					success : function(data) {
	    						alert(data);
	    						window.location.href = ("mypage.do"); //JSP 이동 페이지 적기  
	    					},
	    					error : function(e) {
	    						console.log(e);
	    					}
	    				});

	                    
	          } else {
	              var msg = '결제에 실패하였습니다.';
	              msg += '에러내용 : ' + rsp.error_msg;
	          }
	          alert(msg);
	      });
	      
	      }
	</script>
</body>
</html>