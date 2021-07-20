<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!Doctype html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Shop Season</title>
<link rel="shortcut icon" href="assets/images/logo/favourite_icon.png">

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
/* 이미지크기 */
.item_image .fill {
   width: 240px;
   height: 290px;
   object-fit: cover;
}
</style>

</head>
<body>
   <jsp:include page="../header.jsp"></jsp:include>
   <!-- breadcrumb_section - start
            ================================================== -->
   <section class="breadcrumb_section0919 text-uppercase"
      style="background-position: 70% 40%; background-image: url(./assets/images/breadcrumb/magazine.jpg);">
      <div class="container">
         <h1 class="page_title wow text-white fadeInUp" data-wow-delay=".1s">#계절</h1>

      </div>
      <div class="breadcrumb_icon_wrap">
         <div class="container">
            <div class="breadcrumb_icon wow fadeInUp" data-wow-delay=".3s">
               <img src="assets/images/feature/11.jpg" alt="icon_not_found"
                  width="50px"> <span class="bg_shape"></span>
            </div>
         </div>
      </div>
   </section>
   <!-- breadcrumb_section - end
            ==================================================

          gallery_section - start
        ================================================== -->
   <section class="gallery_section sec_ptb_120 bg_default_gray">
      <div class="container" style="max-width: 1300px; margin-top: 5%;">
         <!-- 탭-태그 -->
         <ul class="filters-button-group ul_li_center wow fadeInUp"
            data-wow-delay=".1s">
            <li><button class="button text-uppercase active"
                  data-filter=".all">all</button></li>
            <li><button class="button text-uppercase" data-filter=".spring">봄</button></li>
            <li><button class="button text-uppercase" data-filter=".summer">여름</button></li>
            <li><button class="button text-uppercase" data-filter=".fall">가을</button></li>
            <li><button class="button text-uppercase" data-filter=".winter">겨울</button></li>
         </ul>
         <!-- 관리자 로그인 시에만 보임 -->
         <div style="display: flex; align-items: center; margin-top: 20px;">
            <div class="col-md-5 col-lg-5"></div>
            <div class="col-md-2 col-lg-2" style="text-align: center;">
               <a class="btn btn_primary text-uppercase admin" href="shopAdmin.do">상품
                  추가</a>
            </div>
            <div class="col-md-5 col-lg-5"></div>
         </div>
      </div>
      <!--상품추가버튼 여기까지-->

      <!-- 상품목록 -->
      <div class="container">
         <div class="wrap" style="padding: 1%;">
            <div class="related_products">
               <h4 class="area_title text-uppercase mb-0 wow fadeInUp"
                  data-wow-delay=".1s"></h4>
                  
                  
               <div class="row">

                  <!-- 전체 -->
                  <c:forEach items="${shopSeason}" var="tea">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                           <div class=" wow recipe_item_grid grid fadeInUp">
                              <div class="element-item all " data-category="all">
                                 <!-- <form action="/shop_details.do" method="POST"> -->
                                 <div class="shop_card wow fadeInUp" data-wow-delay=".4s">
                                    <a class="wishlist_btn" href="#!"><i
                                       class="fal fa-heart"></i></a>
                                    <form>
                                       <a class="item_image" href="shopDetails.do?teaId=${tea.teaId }">
                                          <img class="fill" src="resource/imgUpload/${tea.teaImg }"
                                          alt="image_not_found">
                                       </a>
                                       <div class="item_content">
                                          <h3 class="item_title text-uppercase">
                                             <a href="shopDetails.do?teaId=${tea.teaId }" styie="font-family: 'InfinitySans-RegularA1';">
                                                ${tea.teaName} </a>
                                             <%-- <input type="button" id="detail" onclick="detail()"> ${tea.teaName} --%>
                                          </h3>
                                          <div>
                                             <p class=""
                                                style="font-family: 'InfinitySans-RegularA1'; font-size: 1rem; color: black; font-weight: bold">${tea.teaPrice}
                                                원</p>
                                             </a>
                                          </div>
                                       </div>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                  </c:forEach>
               </div>
                  
                  
               <div class="row">

                  <!-- 봄 -->
                  <c:forEach items="${shopSeason}" var="tea">
                     <c:set var="season" value="${tea.tagSeason }" />
                     <c:if test="${fn:contains(season, '봄')}">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                           <div class=" wow recipe_item_grid grid fadeInUp">
                              <div class="element-item spring " data-category="spring">
                                 <!-- <form action="/shop_details.do" method="POST"> -->
                                 <div class="shop_card wow fadeInUp" data-wow-delay=".4s">
                                    <a class="wishlist_btn" href="#!"><i
                                       class="fal fa-heart"></i></a>
                                    <form>
                                       <a class="item_image" href="shopDetails.do?teaId=${tea.teaId }">
                                          <img class="fill" src="resource/imgUpload/${tea.teaImg }"
                                          alt="image_not_found">
                                       </a>
                                       <div class="item_content">
                                          <h3 class="item_title text-uppercase">
                                             <a href="shopDetails.do?teaId=${tea.teaId }" style="font-family: 'InfinitySans-RegularA1';">
                                                ${tea.teaName} </a>
                                             <%-- <input type="button" id="detail" onclick="detail()"> ${tea.teaName} --%>
                                          </h3>
                                          <div>
                                             <p class=""
                                                style="font-family: 'InfinitySans-RegularA1'; font-size: 1rem; color: black; font-weight: bold">${tea.teaPrice}
                                                원</p>
                                             </a>
                                          </div>
                                       </div>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </c:if>
                  </c:forEach>
               </div>

               <!-- 여름 -->
               <div class="row">
                  <c:forEach items="${shopSeason}" var="tea">
                     <c:set var="season" value="${tea.tagSeason }" />
                     <c:if test="${fn:contains(season, '여름')}">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                           <div class=" wow recipe_item_grid grid fadeInUp">
                              <div class="element-item summer " data-category="summer">
                                 <!-- <form action="/shop_details.do" method="POST"> -->
                                 <div class="shop_card wow fadeInUp" data-wow-delay=".4s">
                                    <a class="wishlist_btn" href="#!"><i
                                       class="fal fa-heart"></i></a>
                                    <form>
                                       <a class="item_image" href="shopDetails.do?teaId=${tea.teaId }">
                                          <img class="fill" src="resource/imgUpload/${tea.teaImg }"
                                          alt="image_not_found">
                                       </a>
                                       <div class="item_content">
                                          <h3 class="item_title text-uppercase">
                                             <a href="shopDetails.do?teaId=${tea.teaId }" style="font-family: 'InfinitySans-RegularA1';">
                                                ${tea.teaName} </a>
                                             <%-- <input type="button" id="detail" onclick="detail()"> ${tea.teaName} --%>
                                          </h3>
                                          <div>
                                             <p class=""
                                                style="font-family: 'InfinitySans-RegularA1'; font-size: 1rem; color: black; font-weight: bold">${tea.teaPrice}
                                                원</p>
                                             </a>
                                          </div>
                                       </div>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </c:if>
                  </c:forEach>
               </div>

               <!-- 가을 -->
               <div class="row">
                  <c:forEach items="${shopSeason}" var="tea">
                     <c:set var="season" value="${tea.tagSeason }" />
                     <c:if test="${fn:contains(season, '가을')}">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                           <div class=" wow recipe_item_grid grid fadeInUp">
                              <div class="element-item fall " data-category="fall">
                                 <!-- <form action="/shop_details.do" method="POST"> -->
                                 <div class="shop_card wow fadeInUp" data-wow-delay=".4s">
                                    <a class="wishlist_btn" href="#!"><i
                                       class="fal fa-heart"></i></a>
                                    <form>
                                       <a class="item_image" href="shopDetails.do?teaId=${tea.teaId }">
                                          <img class="fill" src="resource/imgUpload/${tea.teaImg }"
                                          alt="image_not_found">
                                       </a>
                                       <div class="item_content">
                                          <h3 class="item_title text-uppercase">
                                             <a href="shopDetails.do?teaId=${tea.teaId }" style="font-family: 'InfinitySans-RegularA1';">
                                                ${tea.teaName} </a>
                                             <%-- <input type="button" id="detail" onclick="detail()"> ${tea.teaName} --%>
                                          </h3>
                                          <div>
                                             <p class=""
                                                style="font-family: 'InfinitySans-RegularA1'; font-size: 1rem; color: black; font-weight: bold">${tea.teaPrice}
                                                원</p>
                                             </a>
                                          </div>
                                       </div>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </c:if>
                  </c:forEach>
               </div>

               <!-- 겨울 -->
               <div class="row">
                  <c:forEach items="${shopSeason}" var="tea">
                     <c:set var="season" value="${tea.tagSeason }" />
                     <c:if test="${fn:contains(season, '겨울')}">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                           <div class=" wow recipe_item_grid grid fadeInUp">
                              <div class="element-item winter " data-category="winter">
                                 <!-- <form action="/shop_details.do" method="POST"> -->
                                 <div class="shop_card wow fadeInUp" data-wow-delay=".4s">
                                    <a class="wishlist_btn" href="#!"><i
                                       class="fal fa-heart"></i></a>
                                    <form>
                                       <a class="item_image" href="shopDetails.do?teaId=${tea.teaId }">
                                          <img class="fill" src="resource/imgUpload/${tea.teaImg }"
                                          alt="image_not_found">
                                       </a>
                                       <div class="item_content">
                                          <h3 class="item_title text-uppercase">
                                             <a href="shopDetails.do?teaId=${tea.teaId }" style="font-family: 'InfinitySans-RegularA1';">
                                                ${tea.teaName} </a>
                                             <%-- <input type="button" id="detail" onclick="detail()"> ${tea.teaName} --%>
                                          </h3>
                                          <div>
                                             <p class=""
                                                style="font-family: 'InfinitySans-RegularA1'; font-size: 1rem; color: black; font-weight: bold">${tea.teaPrice}
                                                원</p>
                                             </a>
                                          </div>
                                       </div>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </c:if>
                  </c:forEach>
               </div>

            </div>
         </div>
      </div>
      </div>
      </div>
      </div>
   </section>
   <!-- gallery_section - end
                  ================================================== -->

   </main>
   <!-- main body - end
            ================================================== -->
   <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>