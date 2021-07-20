<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% 
   String data =  request.getParameter("data"); //data 를 String 으로 변환 
%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
                  "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>Subscribe - Tree</title>
  
  <link rel="shortcut icon" href="assets/images/feature/11.jpg">

  <!-- framework - css include -->
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
  <link rel="stylesheet" type="text/css" href="assets/css/teau.css">

<!-- 
  유저 세션 받아오기
  <script src="assets/js/com_lib.js"></script>
  제이쿼리 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   
   <script type="text/javascript">
     $(document).ready(function(){
        getMemberInfo();
     });
     
     function sessionCheck(obj){
        var id = obj["member"].id;
        console.log(id);
     }
  </script> -->



</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <!-- breadcrumb_section - start
        ================================================== -->
      <section class="breadcrumb_section text-uppercase"
        style="background-image: url(assets/images/breadcrumb/tree.jpg);">
        
        <div class="container">
          <h1 class="page_title text-white wow fadeInUp" data-wow-delay=".1s">나무 구독</h1>
          <ul class="breadcrumb_nav ul_li wow fadeInUp" data-wow-delay=".2s">
            <li><a href="index.html"><i class="fas fa-home"></i> Home</a></li>
            <li>나무 구독</li>
          </ul>
        </div>
        <div class="breadcrumb_icon_wrap">
          <div class="container">
            <div class="breadcrumb_icon wow fadeInUp" data-wow-delay=".3s">
              <img src="assets/images/feature/11.jpg" alt="icon_not_found" width="50px">
              <!--지금 커피아이콘 => 씨앗아이콘으로-->
              <span class="bg_shape"></span>
            </div>
          </div>
        </div>
      </section>
      <!-- breadcrumb_section - end
        ================================================== -->

      <!-- reserve_table_section - start
        ================================================== -->
    <section class="reserve_table_section sec_ptb_120 bg-grey">
      <div id="sub_tree" class="container">
        <div class="reserve_table_form wow fadeInUp bg-white" style="padding-left: 0px; padding-right: 0px;"
          data-wow-delay=".1s">
          <div class="subcribe_title">
              <h2 class="form_title text-center text-uppercase" style="font-size: 2rem;">원하는 항목을 10개 골라보세요</h2>
            </div>
            
            

            <form id="tree_form" method="get" action="insertSubTree.do">
            
            <input type=hidden id="subUser" name="subUser" value="${member.memberId}"/>
            <input type=hidden id="subCheck" name="subCheck" value="${member.memberSub}"/>
            
            <div class="row justify-content-center">
              <div id="tt_base" class="sub_tree">
                <p class="sub_tree_title" style="font-size: 1.7rem; ">베이스 선택</p>

                <div class="list_wrap">
                  <ul>
                  
                  <c:forEach items="${teaList}" var="tea">
                    <c:if test="${tea.ttGen eq 'base'}">
                    
                    <li class="tt_goods tt_base">
                      <label>
                          <div class="tt_cate">
                            <span>${tea.ttCate}</span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_${tea.ttId}.png" alt="${tea.ttName}" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="${tea.ttName}" name="treeSelect" id="tt_${tea.ttId}" class="tt_base">
                            <p class="tt_name"> ${tea.ttName} </p>
                            <p class="tt_explain"> ${tea.ttInfo} </p>
                          </div>
                      </label>
                    </li>
                   </c:if>
                </c:forEach>

                
                  </ul>
                </div>
              </div>


              <div id="tt_blend" class="sub_tree tt_blend">
                <p class="sub_tree_title">블렌딩 선택</p>

                <div class="list_wrap">
                  <ul>
                  
                  <c:forEach items="${teaList}" var="tea">
                    <c:if test="${tea.ttGen eq 'blend'}">
                                      
                    <li class="tt_goods tt_base">
                      <label>
                          <div class="tt_cate">
                            <span> ${tea.ttCate} </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_${tea.ttId}.png" alt="${tea.ttName}" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="${tea.ttName}" name="treeSelect" id="tt_${tea.ttId}" class="tt_blend">
                            <p class="tt_name"> ${tea.ttName} </p>
                            <p class="tt_explain"> ${tea.ttInfo} </p>
                          </div>
                      </label>
                    </li>
                   </c:if>
                </c:forEach>
                  </ul>
                </div>
              </div>

              
              <div id="tt_blend" class="sub_tree tt_add">
                <p class="sub_tree_title">추가 선택</p>

                <div class="list_wrap">
                  <ul>
                   <c:forEach items="${teaList}" var="tea">
                    <c:if test="${tea.ttGen eq 'add'}">
                    <li class="tt_goods tt_base">
                      <label>
                          <div class="tt_cate">
                            <span> 부자재 </span>
                          </div><br>
                          <div class="tt_thum">
                            <!-- <img src="${list.ttThumImg}"> -->
                            <img src="./assets/images/tree/tt_${tea.ttId}.png" alt="${tea.ttName}" class="tt_thum_img">
                          </div>
                          <div class="tt_info">
                            <input type="checkbox" value="${tea.ttName}" name="treeAdd" id="tt_${tea.ttId}" class="tt_add">
                            <p class="tt_name"> ${tea.ttName} </p> 
                            <input type="hidden" value="${tea.ttPrice}" id="price${tea.ttId}"/>
                            <p class="tt_price">${tea.ttPrice}원 </p>
                          </div>
                      </label>
                    </li>
                </c:if>
               </c:forEach>       
   
                  </ul>
                </div>
                </div>
                
                

<!--                 <div id="tt_req" class="sub_tree tt_req"> -->
                <div id="tt_req" class="sub_tree">
                  <p class="sub_tree_title">요청사항</p>
                  <p style="font-size:1.2rem;">알레르기 여부 등 요청사항이 있으면 작성해주세요.</p>
                <div>
                  <textarea placeholder="요청사항을 입력해주세요" name="treeReq" value="" id="treeReq"> </textarea>
                </div>
              </div>
             
            <!-- 가격출력 -->
            
            
            <div id="tt_price" class="sub_tree">
              <p>결제금액/월</p>
              <input type="text" name="subPrice" id="totalPrice" class="totalPrice" size=9 value="34900" readonly>원
            </div>

              <div class="text-center">
                <br />
                <br />
                <br />
                <input type="button" id="btn_subSubmit" value="구독 신청"
                class="btn btn_primary text-uppercase" style="font-size:18px;" onclick="inORUp();">
               </input>
              </div>
            </div>
            </form>

            <!--여기 위 부분을 수정-->

            <div class="decoration_icon">
              <img src="assets/images/feature/11.jpg" alt="icon_not_found" width="50px">
              <span class="bg_shape"></span>
            </div>
          </div>
          <div class="reserve_banner_image wow fadeInUp" data-wow-delay=".3s">
            <img src="assets/images/reserve/tree_bottom.jpg" alt="image_not_found">
          </div>
        </div>
      </section>
      <!-- reserve_table_section - end
        ================================================== -->
    </main>
    
    	   <script type="text/javascript"
      src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
   <script type="text/javascript"
      src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<jsp:include page="footer.jsp"></jsp:include>



  <script>
     let chkGoodsList = new Array();
     // var chkGoodsList = [];
     let chkCnt = 0;
     let chkCntBs = 0;
     let selected;
     let addprice = 0;

  $(document).ready(function () {
       

      // 업데이트 시 기존 사용자의 선택 불러오기(오류 수정)
      let data = <%=data%>;
      console.log(data);
      
      if(data != null){
         //stirng을 다시 JSON 객체로 변환
         let obj = JSON.parse(data);
         console.log(obj);
         
         let treeSelect = obj['subInfo'].treeSelect.split(',');
         let treeAdd = obj['subInfo'].treeAdd; 
         
         if(treeAdd != null){     
         treeAdd = treeAdd.split(',');
         }
         let treeReq = obj['subInfo'].treeReq;
         let subPrice = obj['subInfo'].subPrice;
         
         console.log(treeSelect);
         console.log(treeAdd);
         console.log(treeReq);
         console.log(subPrice);

         // 요청사항
         $('#treeReq').val(treeReq);
         // 총가격
         $('#totalPrice').val(subPrice);
         
         // 아이템 선택 뿌려주기
         $('input:checkbox[name="treeSelect"]').each(function(){
            for(let i=0 ; i< treeSelect.length ; i++){               
               if(this.value == treeSelect[i]){
                  this.checked = true;
               }
            } 
          });
         
         if(treeAdd != null){
            
        $('input:checkbox[name="treeAdd"]').each(function(){
            for(let i=0; i<treeAdd.length ;i++){               
                  if(this.value == treeAdd[i] ){
                     this.checked = true;
                  }
               }             
         });         
         
         }

        // 기존 선택된 상품에 css 표시
          $('input:checkbox:checked').each(function() {
            $(this).parents('li').addClass('selected');
            $(this).siblings('.tt_explain').css({"color": "#aaa"});
             });
      }
      
      //insert와 update 구분 
      if(data == null){
         //사용자가 보낸 값이 없으면 - insert
         $("#btn_subSubmit").val("나무 구독하기")
      } else {
         //사용자가 보낸 값이 있으면 - update
         $("#btn_subSubmit").val("나무 구독수정")  
      }
      

      // 베이스 선택
      $("input:checkbox[name='treeSelect']").on("click", function () {
        let chkCntBs = $("input:checkbox[class='tt_base']:checked").length;
        chkCnt = $("input:checkbox[name='treeSelect']:checked").length;
        
        if (chkCntBs > 3) {
            $(this).prop("checked", false);
            $(this).parents('li').removeClass('selected');
           /*  $(this).siblings('.tt_explain').css({"color": "#fff"}); */
       
            alert("베이스는 3개까지만 선택할 수 있습니다.");
            return false;
          } else {
            if($(this).is(":checked") == true){
              chkGoodsList.push($(this).val());
              console.log(chkGoodsList);
              $(this).parents('li').addClass('selected');
              $(this).siblings('.tt_explain').css({"color": "#aaa"});
            } else {
              for(var i = 0; i < chkGoodsList.length; i++) {
                if(chkGoodsList[i] == $(this).val()) {
                  chkGoodsList.splice(i, 1);
                  i--;
                  console.log(chkGoodsList);
                }
              }
              $(this).parents('li').removeClass('selected');
              $(this).siblings('.tt_explain').css({"color": "#fff"});
            }

          } 

        // 베이스+블렌드 총 갯수 10개 이하
           
          chkCnt = $("input:checkbox[name='treeSelect']:checked").length;
          if (chkCnt > 10 ) {
              $(this).prop("checked", false);
              alert("10개까지 선택하실 수 있습니다.");
              $(this).parents('li').removeClass('selected');
              return false;
            } else {
              if($(this).is(":checked") == true){
              // chkGoodsList.push($(this).val());
              // console.log(chkGoodsList);
              $(this).parents('li').addClass('selected');
              $(this).siblings('.tt_explain').css({"color": "#aaa"});
            } else {
              $(this).parents('li').removeClass('selected');
              $(this).siblings('.tt_explain').css({"color": "#fff"});
            }

            }
          //});

        });
          
      
      
      
      
      let price;
      $("input:checkbox[name='treeAdd']").on("click", function () {
         price = $('#totalPrice').val();
          let price1;
         // value 값을 string으로 가져올 수도 있으니 int로 변환
          price = parseInt(price);
          
          if($('#'+this.id).is(":checked")== true){
           $(this).parents('li').addClass('selected');  
           if(this.id == 'tt_49') {
               price1 = $('#price49').val();
                 price1 = parseInt(price1);
           } else if(this.id == 'tt_50') {
               price1 = $('#price50').val();
               price1 = parseInt(price1);
           } else if(this.id == 'tt_51') {
               price1 = $('#price51').val();
               price1 = parseInt(price1);
           }
            price += price1;
            console.log("추가가격 플러스");
            console.log("+"+price1);
            console.log(price);
          } else {
             $(this).parents('li').removeClass('selected');
             if(this.id == 'tt_49') {
                 price1 = $('#price49').val();
                 price1 = parseInt(price1);
             } else if(this.id == 'tt_50') {
                 price1 = $('#price50').val();
                 price1 = parseInt(price1);
             } else if(this.id == 'tt_51') {
                 price1 = $('#price51').val();
                 price1 = parseInt(price1);
             }
            price -= price1;
            console.log("추가가격 마이너스");
            console.log("-"+price1);
            console.log(price);
          }
          
          //토탈프라이스에 프라이스값 대입
          $('#totalPrice').val(price);
        });


    });
    
    /* 함수 */
    
    
    // insert update 구분 함수 + 1인 1구독을 위해 구독정보 체크 

    function inORUp(){
       
       let subCheck = $('#subCheck').val();
       //let subCheck = $('#subCheck').val();
       let data = <%=data%>;
       console.log(data);
       if(data == null) {
          // 사용자가 보낸 정보가 없으면 구독 내역 있는지 체크(1인 1구독)          
          if(subCheck == 1){
             alert("이미 구독 중인 상품이 있습니다");
          } else{
          // 구독 내역 없으면 insert
          let insert = 'insertSubTree.do'
          submitChkCount(insert);
          }
          
       } else {
          // 사용자가 보낸 정보가 있으면 update
          chkCnt = $("input:checkbox[name='treeSelect']:checked").length;
        	  if(chkCnt == 10) {
        	         $.ajax({
        	              type: 'POST',
        	              url: 'updateSubTree.do',
        	              dataType: 'text', // form에 있는 데이터들을 controller로 text타입으로 
        	              data: $('#tree_form').serialize(),
        	              
        	              success: function(data) {
        	                 alert(data);
        	                 //window.location.href = "getSubTree.do"; //JSP 이동 페이지 적기  
        	                 window.location.href = "mypage.do"; //JSP 이동 페이지 적기  
        	              }, 
        	              error: function(e) {
        	                 console.log(e);
        	              }
        	           });
        	      
        	      } else if(chkCnt < 10) {
        	        alert("총 10개 선택 해 주세요. 고객님의 현재 선택 갯수: " + chkCnt + "개");
        	        return false;
        	        
        	      } 
       }
       
    }
    
    // 기존
/*     function submitChkCount(inOrUp) {
       
      chkCnt = $("input:checkbox[name='treeSelect']:checked").length;
      
      if(chkCnt == 10) {
         $.ajax({
              type: 'POST',
              url: inOrUp,
              dataType: 'text', // form에 있는 데이터들을 controller로 text타입으로 
              data: $('#tree_form').serialize(),
              
              success: function(data) {
                 alert(data);
                 //window.location.href = "getSubTree.do"; //JSP 이동 페이지 적기  
                 window.location.href = "mypage.do"; //JSP 이동 페이지 적기  
              }, 
              error: function(e) {
                 console.log(e);
              }
           });
      
      } else if(chkCnt < 10) {
        alert("총 10개 선택 해 주세요. 고객님의 현재 선택 갯수: " + chkCnt + "개");
        return false;
        
      } 
    } */
    
    // 결제 추가 후 인서트
function submitChkCount() {
      chkCnt = $("input:checkbox[name='treeSelect']:checked").length;
      
      if(chkCnt == 10) {
    	  checkModule();
      
      } else if(chkCnt < 10) {
        alert("총 10개 선택 해 주세요. 고객님의 현재 선택 갯수: " + chkCnt + "개");
        return false;
        
      } 
    }
   
    
    // 카카오 구매 API
    function checkModule() {
  	  console.log(2222);
  	  var Imp = window.IMP;
  	  let price = $('#totalPrice').val();
 
    //let Imp = window.IMP;
    IMP.init('imp45072851');
    
    IMP.request_pay({
        pg : 'kakaopay', // version 1.1.0부터 지원.
        pay_method : 'kakaopay',
        merchant_uid : "${sub.subDate}",
        name : '나무 구독 결제', // 상품명
        amount : price, // 상품가격
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
  					url : 'insertSubTree.do',
  					dataType : 'text',// form에 있는 데이터들을 controller로 text타입으로 
  					data : $('#tree_form').serialize(),
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