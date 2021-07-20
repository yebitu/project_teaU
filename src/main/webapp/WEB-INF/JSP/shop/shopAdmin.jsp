<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
   String data = request.getParameter("data");
%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Admin</title>
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
   <jsp:include page="../header.jsp"></jsp:include>
   <!-- contact_section - start
        ================================================== -->
   <section id="shopAdmin" class="contact_section sec_ptb_120 bg_default_gray">
      <div class="container">
         <div class="contact_form bg_white wow fadeInUp"
            style="margin-top: 100px;" data-wow-delay=".1s">

            <form id="insertForm" action="insertShop.do" method="post"
               enctype="multipart/form-data">
               <input type="hidden" id="shopCheck" name="shopCheck"
                  value="${tea.teaId}" />
               <div class="row">
                  <div class="col-lg-8">
                     <div class="form_item">
                        <h1>상품의 정보를 입력해주세요</h1>
                     </div>
                  </div>
                  <div class="col-lg-4">
                     <div class="form_item"></div>
                  </div>
               </div>
               <div>
                  <input type="radio" id="TO" name="orderCate" value="TO" checked>
                  <label for="TO">오리지널티</label>
               </div>
               <div>
                  <input type="radio" id="TB" name="orderCate" value="TB"> <label
                     for="TB">블렌딩티</label>
               </div>
               <div class="form_item">
                  <label>
                     <h6>상품이름</h6> <input type="text" name="teaName" id="teaName"
                     placeholder="차 이름을 적어주세요" required>
                  </label>
               </div>
               <div class="form_item">
                  <h6>상품소개</h6>
                  <textarea name="teaInfo" id="teaInfo"
                     placeholder="상품 소개글을 적어주세요 :" required>${tea.teaInfo }</textarea>
               </div>
               <div class="form_item">
                  <label>
                     <h6>상품가격(원)</h6> <input type="text" id="teaPrice" name="teaPrice"
                     onKeyPress="return checkNum(event)" placeholder="차 가격을 적어주세요"
                     required>
                  </label>
               </div>

               <div>
                  <h6>베이스 선택</h6>
                  <div>
                     <label><input type="radio" name="tagBase" value="HERB">
                        HERB</label>
                  </div>
                  <div>
                     <label><input type="radio" name="tagBase" value="GREEN">
                        GREEN</label>
                  </div>
                  <div>
                     <label><input type="radio" name="tagBase" value="BLACK">
                        BLACK</label>
                  </div>
                  <div>
                     <label><input type="radio" name="tagBase" value="ETC">
                        ETC</label>
                  </div>

                  <br>


                  <h6>계절별 선택</h6>
                  <div>
                     <label><input type="checkbox" id="tagB" name="tagSeason"
                        value="봄"> 봄</label>
                  </div>
                  <div>
                     <label><input type="checkbox" id="tagB" name="tagSeason"
                        value="여름"> 여름</label>
                  </div>
                  <div>
                     <label><input type="checkbox" id="tagB" name="tagSeason"
                        value="가을"> 가을</label>
                  </div>
                  <div>
                     <label><input type="checkbox" id="tagB" name="tagSeason"
                        value="겨울"> 겨울</label>
                  </div>

                  <br>


                  <h6>사용자별 선택</h6>
                  <div>
                     <label><input type="checkbox" id="tagB" name="tagUser"
                        value="학생"> 학생</label>
                  </div>
                  <div>
                     <label><input type="checkbox" id="tagB" name="tagUser"
                        value="직장인"> 직장인</label>
                  </div>
                  <div>
                     <label><input type="checkbox" id="tagB" name="tagUser"
                        value="임산부"> 임산부</label>
                  </div>
                  <div>
                     <label><input type="checkbox" id="tagB" name="tagUser"
                        value="어르신"> 어르신</label>
                  </div>
               </div>
               <br>


               <div class="tagO">
                  <h6>카페인 선택</h6>
                  <div>
                     <label><input type="radio" name="tagCaff" value="카페인">
                        카페인</label>
                  </div>
                  <div>
                     <label><input type="radio"  name="tagCaff" value="디카페인">
                        디카페인</label>
                  </div>

                  <br>


                  <h6>맛 선택</h6>
                  <div>
                     <label><input type="checkbox" name="tagTaste"
                        value="시원한맛"> 시원한맛</label>
                  </div>
                  <div>
                     <label><input type="checkbox" name="tagTaste"
                        value="떫은맛"> 떫은맛</label>
                  </div>
                  <div>
                     <label><input type="checkbox" name="tagTaste"
                        value="구수한맛"> 구수한맛</label>
                  </div>
                  <div>
                     <label><input type="checkbox" name="tagTaste"
                        value="단맛"> 단맛</label>
                  </div>
                  <div>
                     <label><input type="checkbox" id="tagO" name="tagTaste"
                        value="신맛"> 신맛</label>
                  </div>

                  <br>


                  <h6>효능 선택</h6>
                  <div>
                     <label><input type="checkbox" name="tagEff"
                        value="심신안정"> 심신안정</label>
                  </div>
                  <div>
                     <label><input type="checkbox" name="tagEff"
                        value="활력"> 활력</label>
                  </div>
                  <div>
                     <label><input type="checkbox" name="tagEff"
                        value="건강"> 건강</label>
                  </div>
               </div>
               <br>




               <div class="tagB">
                  <h6>블렌드 선택</h6>
                  <div>
                     <label><input type="checkbox" name="tagBlend"
                        value="꽃"> 꽃</label>
                  </div>
                  <div>
                     <label><input type="checkbox" name="tagBlend"
                        value="과일"> 과일</label>
                  </div>
                  <div>
                     <label><input type="checkbox" name="tagBlend"
                        value="스파이시"> 스파이시</label>
                  </div>
                  <div>
                     <label><input type="checkbox" name="tagBlend"
                        value="초콜렛&과자"> 초콜렛&과자</label>
                  </div>
                  <div>
                     <label><input type="checkbox" name="tagBlend"
                        value="민트"> 민트</label>
                  </div>

                  <br>


                  <h6>마시는법 선택</h6>
                  <div>
                     <label><input type="checkbox" name="tagDrink"
                        value="아이스티"> 아이스티</label>
                  </div>
                  <div>
                     <label><input type="checkbox" name="tagDrink"
                        value="밀크티"> 밀크티</label>
                  </div>
                  <div>
                     <label><input type="checkbox" name="tagDrink"
                        value="핫티"> 핫티</label>
                  </div>
                  <div>
                     <label><input type="checkbox" name="tagDrink"
                        value="식수대용"> 식수대용</label>
                  </div>
               </div>
               <br>
                   <!-- 업데이트에만 필요한 파라미터 숨겨서 전송하는 div  -->
                   <div id="hiddenImgInfo">
                   </div>
                </form>
                   <div class = "row">
                         <div class = "col-lg-12">
                             <div class="fileDiv">
                                 <div class="file_btn" style=" text-align:left;">
                                 <label class="btn btn_primary"  style="background-color:#eee;padding:10px;color:black;font-size:18px"> 파일선택
                                     <input multiple="multiple" type="file" id="uploadFile" name="uploadFile"  style="display: none;" >
                                 </label>
                                 </div>

                                 <!-- 미리보기 이미지 출력  -->
                                    <div class="imgs_wrap" style="margin-top:10px;font-size:15px">
                                    
                                    </div>                                 
                                </div>
                                <br />
                              <!--  </form>  -->

                         </div>
                         </div> 
                            <div class="text-center">
                                <button type="button" class="btn btn_primary text-uppercase" onclick="inOrUp();" >등록</button>
                            </div>

            <!-- </form> -->
         </div>
      </div>
   </section>
   <!-- contact_section - end
        ================================================== -->



   </main>
   <!-- main body - end
      ================================================== -->

   <jsp:include page="../footer.jsp"></jsp:include>

   <script>
      // 정보 가져오기
      $(document).ready(function() {
         // URI로 넘어온 DATA
         let data = <%=data%>;
         
         //이미지 미리보기 인덱스
          let idx = 0;
         
          // 업데이트
         if (data != null) {
            //String을 다시 JSON 객체로 변환
            let obj = JSON.parse(data);
            let teaId = obj['shopInfo'].teaId;
            

            // 버튼
            let orderCate = obj['shopInfo'].orderCate;

            if (orderCate == "TO") {
               $(".tagB").hide();
            } else {
               $(".tagO").hide();
            }

            // 값 불러오는 것
            let teaName = obj['shopInfo'].teaName;
            $("#teaName").val(teaName);
            console.log(teaName);

            let teaInfo = obj['shopInfo'].teaInfo;
            $("#teaInfo").val(teaInfo);

            let teaPrice = obj['shopInfo'].teaPrice;
            $("#teaPrice").val(teaPrice);

            // 값 불러오는 것 (체크박스, 라디오박스)
            let tagSeason = obj['shopInfo'].tagSeason.split(',');
            let tagUser = obj['shopInfo'].tagUser.split(',');
            let tagBase = obj['shopInfo'].tagBase;

            $('input:radio[name="orderCate"]').each(function() {
               var cate = $(this);
               if (cate.val() == orderCate)
                  cate.attr('checked', true);
            });

            $('input:checkbox[name="tagSeason"]').each(function() {
               for (let i = 0; i < tagSeason.length; i++) {
                  if (this.value == tagSeason[i]) {
                     this.checked = true;
                  }
               }
            });
            $('input:checkbox[name="tagUser"]').each(function() {
               for (let i = 0; i < tagUser.length; i++) {
                  if (this.value == tagUser[i]) {
                     this.checked = true;
                  }
               }
            });
            $('input:radio[name="tagBase"]').each(function() {
               var base = $(this);
               if (base.val() == tagBase)
                  base.attr('checked', true);

            });

            // TO
            if (orderCate == "TO") {

               let tagCaff = obj['shopInfo'].tagCaff;
               let tagTaste = obj['shopInfo'].tagTaste.split(',');
               let tagEff = obj['shopInfo'].tagEff.split(',');

               $('input:radio[name="tagCaff"]').each(function() {
                  var caff = $(this);
                  if (caff.val() == tagCaff)
                     caff.attr('checked', true);

               });
               $('input:checkbox[name="tagTaste"]').each(function() {
                  for (let i = 0; i < tagTaste.length; i++) {
                     if (this.value == tagTaste[i]) {
                        this.checked = true;
                     }
                  }
               });
               $('input:checkbox[name="tagEff"]').each(function() {
                  for (let i = 0; i < tagEff.length; i++) {
                     if (this.value == tagEff[i]) {
                        this.checked = true;
                     }
                  }
               });

               // TB
            } else {
               let tagBlend = obj['shopInfo'].tagBlend.split(',');
               let tagDrink = obj['shopInfo'].tagDrink.split(',');

               $('input:checkbox[name="tagBlend"]').each(function() {
                  for (let i = 0; i < tagBlend.length; i++) {
                     if (this.value == tagBlend[i]) {
                        this.checked = true;
                     }
                  }
               });
               $('input:checkbox[name="tagDrink"]').each(function() {
                  for (let i = 0; i < tagDrink.length; i++) {
                     if (this.value == tagDrink[i]) {
                        this.checked = true;
                     }
                  }
               });
            }

            //0번 이미지 = 메인이미지 
            let teaImg = obj['shopInfo'].teaImg;
            let teaImg0 = obj['imgInfo'][0].teaImg; 
            
            let teaImg1 = obj['imgInfo'][1].teaImg;
                let teaImg2 = obj['imgInfo'][2].teaImg;
                let teaImg3 = obj['imgInfo'][3].teaImg;
                let teaImgs = [teaImg, teaImg1, teaImg2, teaImg3];
            

            $('input[name=fileName]').attr('value', teaImg);
            console.log($('input[name=fileName]').val());
            
            
            
            // 7.13 추가
                // 상품 이미지 즉시 실행함수
                
                (function(){
                 //let teaId = obj['shopInfo'].teaId;
                   console.log("이미지로딩 즉시실행함수 taeId:"+teaId);
                   
                   $.getJSON("getAttachList.do", {teaId : teaId}, function(arr){
                      console.log(arr);
                      
                      let preImg = "";
                      let str = "";
                      
                   $(arr).each(function(i, attach) {
                   
                   
                   //let fileCallPath = encodeURIComponent(attach.fileName);
                   
               preImg += '<label><div class="imgblock" style="display:inline-block;" id="imgblock_' + i + '" onclick="deleteImg(' + i + ')">';
               preImg += '<div class="removeIcon" data-file="'+ attach.teaImg +'"><i class="far fa-minus-square"></i></div>';
               preImg += '<img id="preImg_'+ i +'" class="preImg" style="width: 150px; height:150px;border-radius:20px;margin: 10px 10px;" src="resource/imgUpload/' + attach.teaImg +'"></label>';
               preImg += '<div class="imgName" style="width: 150px; overflow:hidden;text-align:center;" id="imgName' + i  + '">'+ attach.teaImg +'</div></div>';
            
            console.log(attach);
            console.log(attach.teaImg);
            
      
            
            // console.log(attach.imgId); // 못받아옴. 왜?
            console.log(i);
                      
                   });
                // 수정 때만 사용하는 숨은 input 태그                  
                   //str += '<input type="hidden" name="teaImg" value="'+teaImg+'" />';
                   //str += '<input type="hidden" name="attachList" value="'+teaImgs+'" />' ;
                   //str += '<input type="hidden" id="teaId" name="teaId" value="'+teaId+'"/>'
                   //$("#hiddenImgInfo").html(str);
                   
                   $(".imgs_wrap").html(preImg);

                   });
                 
              })(); 
            
                //상품 이미지
             //$('uploadFile').val(teaImgs);
             let shopAdmin = $('#shopAdmin');
              let formData = new FormData(shopAdmin[0]);
              
              for(let i=0; i<teaImgs.length; i++){
                  formData.append("uploadFile", teaImgs[i]);
              }
            
            
            

         }    // 업데이트 종료
         
         // 인서트
             $(".tagB").hide();
         
             //이미지 미리보기창 리셋
            img_files = [];
            $('#uploadFile').empty();
            $('.imgs_wrap').empty();
            
         

         // insert, update 버튼 구분
         if (data == null) {
            $('#btn_shopSubmit').val('등록');
         } else {
            $('#btn_shopSubmit').val('수정');
         }

      }); // 도큐먼트레디 종료
      

      // 태그 숨기기
       $(document).ready(function() { 
         $('.tagB').hide();
      }); 
      
      $('input[name="orderCate"]').change(function() { 
         if($(this).val() == "TO") {
            $("input[name='tagBlend']").prop("checked", false);
            $("input[name='tagDrink']").prop("checked", false);
            $('.tagO').show();
            $('.tagB').hide();
            
         }else if($(this).val() == "TB") {
            $("input[name='tagTaste']").prop("checked", false);
            $("input[name='tagCaff']").prop("checked", false);
            $("input[name='tagEff']").prop("checked", false);
            $('.tagB').show();
            $('.tagO').hide();
         }
      });

      // 체크 안된 부분 확인 
      function check() {
         let orderCate = $('input[name="orderCate"]:checked').val()

         if ($('#teaName').val() == "") {
            alert("상품 이름을 입력해주세요 ");
            return false;
         } else if ($('#teaInfo').val() == "") {
            alert("상품 소개글을 입력해주세요 ");
            return false;
         } else if ($('#teaPrice').val() == "") {
            alert("상품 가격을 입력해주세요");
            return false;
         }

         if ($("input[name=tagBase]").is(":checked") == false) {
            alert("베이스를 하나 이상 선택해주세요");
            return false;
         } else if ($("input[name=tagSeason]").is(":checked") == false) {
            alert("계절을 하나 이상 선택해주세요");
            return false;
         } else if ($("input[name=tagUser]").is(":checked") == false) {
            alert("사용자를 하나 이상 선택해주세요");
            return false;
         } else if (orderCate == "TO") {

            if ($("input[name=tagCaff]").is(":checked") == false) {
               alert("카페인을 하나 이상 선택해주세요");
               return false;
            } else if ($("input[name=tagTaste]").is(":checked") == false) {
               alert("맛을 하나 이상 선택해주세요");
               return false;
            } else if ($("input[name=tagEff]").is(":checked") == false) {
               alert("효능을 하나 이상 선택해주세요");
               return false;
            }
         } else if (orderCate == "TB") {
            if ($("input[name=tagBlend]").is(":checked") == false) {
               alert("블렌딩을 하나 이상 선택해주세요");
               return false;
            } else if ($("input[name=tagDrink]").is(":checked") == false) {
               alert("마시는 방법을 하나 이상 선택해주세요");
               return false;
            }
         }

         inOrUp();
      }
      
      function inOrUp() {
         let data = <%=data%>;
         let obj = JSON.parse(data);

         let insertForm = $('#insertForm');

        // add File data to Formdata (img_files 배열에 담은 값을 넣어준다)
         let shopAdmin = $('#shopAdmin');
         let formData = new FormData(insertForm[0]);
         
         for(let i=0; i<img_files.length; i++){
              formData.append("uploadFile", img_files[i]);
          }

         let location = "";

         if (data == null) {
            location = "insertShop.do";
         } else {
            let teaId = obj['shopInfo'].teaId;
            location = "updateShop.do?teaId=" + teaId;

         }
         console.log($("input[name='orderCate']").val());

         $.ajax({
            type : 'POST',
            url : location,
            data : formData,
            contentType : false,
            processData : false,
            success : function(data) {
               alert(data);
               window.location.href = ("shopSeason.do"); //JSP 이동 페이지 적기  
            },
            error : function(e) {
               console.log(e);
            }
         }); //  $.ajax
      }
      
      // 이미지 배열 전역변수 선언
       let img_files = [];
   
      
      // 이미지 미리보기
      $(function() {
         $('#uploadFile').on('change', function() {
            //readURL(this);
            handleImgFile(this);
         });
      });

/*       function readURL(input) {
         if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
               $('#preImage').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
         }
      } */
      
      // 첨부파일 이미지 미리보기
      function handleImgFile(e){
         let files = e.files;
         let arr = Array.prototype.slice.call(files);
         
         arr.forEach(function(f) {
            
            if(!f.type.match("image.*")){
               alert("이미지 파일만 업로드 가능합니다");
               return;
            }
            
            //preview(arr);
            
            //추가하려는 값
            //console.log("f:"+f); // object 파일(배열내 각 요소)  
            
            //이미지 배열에 추가
            img_files.push(f);
            console.log("현재 이미지 배열:"+img_files);

            idx = img_files.indexOf(f);
            //idx = img_files.length -1; // 배열 길이 - 1
            // let originalFileName = f.name; 첨부파일의 진짜 이름
            let teaName = $('#teaName').val();
            let fileName = f.name;
            let idxN = idx; // 담아두지 않으면 reder에서 idx값이 최종값으로 고정
            
            console.log(fileName);
            console.log(idx);
            
            let reader = new FileReader();
            
            //미리보기 창 html
            reader.onload = function(e){
               let preImg = "";
               preImg += '<label><div class="imgblock" style="display:inline-block;" id="imgblock_' + img_files.indexOf(f) + '" onclick="deleteImg(' + img_files.indexOf(f) + ')">';
               preImg += '<div class="removeIcon"><i class="far fa-minus-square"></i></div>';
               preImg += '<img id="preImg_'+ img_files.indexOf(f) +'" class="preImg" style="width: 150px; height:150px;border-radius:20px;   margin: 10px 10px;" src="'+ e.target.result +'"></label>';
               preImg += '<div class="imgName" style="width: 150px; overflow:hidden;text-align:center;" id="imgName' + img_files.indexOf(f) + '">'+ fileName +'</div></div>';

               $(".imgs_wrap").append(preImg);
               
               
            }
            
            //index++;
            console.log(img_files);
            //파일의 URL 읽어서 img src를 url로 지정하는 방식 : 없으면 미리보기 사용 불가능 바로 띄워주려면 필요한듯?
            reader.readAsDataURL(f);
            
         });
         
      } // function handleImgFile(e)
      
      
      //미리보기 이미지 삭제
      function deleteImg(num){
         
         
         num = parseInt(num);
         console.log("선택인덱스:" + num);
         //파일 배열에서 제거 : 문제 - 생성시 기준으로 번호를 받아오다보니 삭제 후에 배열 순서가 변함
         console.log($('#imgName' + num).text());
         for(var i = 0; i < img_files.length; i++) {
            console.log(img_files[i].name);
            if(img_files[i].name == $('#imgName' + num).text()) {
               img_files.splice(i, 1);
               i--;
            }
         }
         
         let imgblock = "#imgblock_" + num;
         
         //미리보기 창에서 제거
         $(imgblock).remove();   
         
   /*       $(this).parent('.imgblock').remove(); */
         //let files = $('#uploadFile').val();

         //let files = document.getElementsByName("uploadFile");
   /*       files[idx].select();
           document.selection.clear(); */
         console.log("현재 이미지 배열:"+img_files);
         
      }
      
      
      // 가격 창 숫자만 입력
      function checkNum() {
         var keyCode = event.keyCode;
         if (((keyCode >= 48) && (keyCode <= 57))) {
            return true;
         } else {
            alert("숫자만 입력 가능합니다");
            return false;
         }
      }
      $('#teaPrice').keyup(function() {
         if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
            var inputVal = $(this).val();
            var check = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
            // test() ㅡ 찾는 문자열이, 들어있는지 아닌지를 알려준다. 비교하여 포함되지 않으면 true 반환, 포함되면 false 반환
            // 만약 방향키가 아닐때, 만약 inputval가 check와 일치한다면 밑에를 실행-> false
            // 한글키 입력시.. inputval는 방향키, check는 한글키 ->늘 true
            // 일치하지 않는다면 true. -> 공백으로 바꾸고 숫자만 입력 가능합니다 실행
            // 영어키는 입력이 되서 위의 메소드가 실행되서 막힘!
            if (check.test(inputVal)) {
               $(this).val("");
               alert("숫자만 입력 가능합니다");
            }
         }
      });
   </script>
</body>
</html>