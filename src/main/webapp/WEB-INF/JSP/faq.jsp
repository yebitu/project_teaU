<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

                    <!doctype html>
                    <html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>faq</title>
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

  </head>


  <body>
<jsp:include page="header.jsp"></jsp:include>
	
        <!-- breadcrumb_section - start
        ================================================== -->
        <section class="breadcrumb_section text-uppercase" style="background-image: url(assets/images/breadcrumb/tea.jpg);">
          <div class="container">
            <h1 class="page_title text-white wow fadeInUp" data-wow-delay=".1s">F.A.Q.</h1>
            <ul class="breadcrumb_nav ul_li wow fadeInUp" data-wow-delay=".2s">
              <li><a href="index.html"><i class="fas fa-home"></i> Home</a></li>
              <li>F.A.Q.</li>
            </ul>
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
        <!-- breadcrumb_section - end
        ================================================== -->

        <!-- faq_section - start
        ================================================== -->
        <section class="faq_section sec_ptb_120 bg_default_gray">
          <div class="container">
            <div class="row">
              <div class="col-lg-8">
                <div class="faq_accordion" id="faq_accordion">
                  <div class="accordion-item wow fadeInUp" data-wow-delay=".1s">
                    <h3 class="accordion-header" id="faq_heading1">
                      <button type="button" data-bs-toggle="collapse" data-bs-target="#faq_collapse1" aria-expanded="true" aria-controls="faq_collapse1">
                        씨앗, 새싹, 나무 구독의 정확한 기준이 뭔가요?
                      </button>
                    </h3>
                    <div id="faq_collapse1" class="collapse show" aria-labelledby="faq_heading1" data-bs-parent="#faq_accordion">
                      <div class="accordion-body pt-0">
                        <p class="mb-0">
                          씨앗 구독은 블렌딩 되지 않은 퓨어한 티로 구성된 키트로 차에 대해 잘 모르시는 분들이 입문용으로 이용하기 좋은 키트입니다.<br>
                          새싹 구독은 블렌딩 된 티로 구성된 키트로 다양한 찻잎들을 섞어 풍부한 향과 맛을 느낄 수 있습니다.<br>
                          나무 구독은 티에 대해 잘 아는 분들이 원하는 블렌딩을 위해 베이스, 향, 플레이버를 직접 선택해 본인만의 티를 만들어 볼 수 있는 키트입니다. 

                        </p>
                      </div>
                    </div>
                  </div>

                  <div class="accordion-item wow fadeInUp" data-wow-delay=".1s">
                    <h3 class="accordion-header" id="faq_heading2">
                      <button class="collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq_collapse2" aria-expanded="false" aria-controls="faq_collapse2">
                        매월 같은 상품을 정기구하나요?
                      </button>
                    </h3>
                    <div id="faq_collapse2" class="collapse" aria-labelledby="faq_heading2" data-bs-parent="#faq_accordion">
                      <div class="accordion-body pt-0">
                        <p class="mb-0">
                          처음 구독 시 선택하신 취향을 변경하지 않을 시에는 선택된 취향 내에서 다양한 차들을 랜덤으로 보내드리고,<br>
                          다른 분류의 차를 이용하고 싶을 경우에는 나의 구독 정보에서 취향을 변경해주시면 변경된 취향에 맞춰 랜덤하게 보내드립니다.
                        </p>
                      </div>
                    </div>
                  </div>

                  <div class="accordion-item wow fadeInUp" data-wow-delay=".1s">
                    <h3 class="accordion-header" id="faq_heading3">
                      <button class="collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq_collapse3" aria-expanded="false" aria-controls="faq_collapse3">
                        매달 얼마를 결제하나요?
                      </button>
                    </h3>
                    <div id="faq_collapse3" class="collapse" aria-labelledby="faq_heading3" data-bs-parent="#faq_accordion">
                      <div class="accordion-body pt-0">
                        <p class="mb-0">
                          씨앗 구독 19,000원, 새싹 구독 22,000원, 나무 구독 22,000원에 이용 가능합니다.  
                        </p>
                      </div>
                    </div>
                  </div>

                  <div class="accordion-item wow fadeInUp" data-wow-delay=".1s">
                    <h3 class="accordion-header" id="faq_heading4">
                      <button type="button" data-bs-toggle="collapse" data-bs-target="#faq_collapse4" aria-expanded="false" aria-controls="faq_collapse4">
                       키트는 언제 배송되고 배송비가 있나요?
                      </button>
                    </h3>
                    <div id="faq_collapse4" class="collapse" aria-labelledby="faq_heading4" data-bs-parent="#faq_accordion">
                      <div class="accordion-body pt-0">
                        <p class="mb-0">
                          키트는 처음 주문하신 날짜를 기준으로 매달 무료배송됩니다.<br>
                          배송일 변경을 원하실 경우 나의 구독 정보에서 수정해주세요.
                        </p>
                      </div>
                    </div>
                  </div>

                  <div class="accordion-item wow fadeInUp" data-wow-delay=".1s">
                    <h3 class="accordion-header" id="faq_heading5">
                      <button class="collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq_collapse5" aria-expanded="false" aria-controls="faq_collapse5">
                        정기구독은 포인트 사용을 어떻게 하나요?
                      </button>
                    </h3>
                    <div id="faq_collapse5" class="collapse" aria-labelledby="faq_heading5" data-bs-parent="#faq_accordion">
                      <div class="accordion-body pt-0">
                        <p class="mb-0">
                          정기결제 날 전에 나의 구독 정보에서 포인트사용을 체크해주시면 3,000점 이상부터 사용이 가능합니다. 
                        </p>
                      </div>
                    </div>
                  </div>
                  
                  <div class="accordion-item wow fadeInUp" data-wow-delay=".1s">
                    <h3 class="accordion-header" id="faq_heading6">
                      <button class="collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq_collapse6" aria-expanded="false" aria-controls="faq_collapse6">
                      랭킹에서 1위를 하게 되면 어떤 상품이 있나요?
                      </button>
                    </h3>
                    <div id="faq_collapse6" class="collapse" aria-labelledby="faq_heading6" data-bs-parent="#faq_accordion">
                      <div class="accordion-body pt-0">
                        <p class="mb-0">
                          나만의 블렌딩 차 랭킹에서 1위를 하게 될 경우, 이달의 차로 정식 메뉴로 소개되며 한 달 무료 구독권을 증정해드립니다. 
                        </p>
                      </div>
                    </div>
                  </div>

                  <div class="accordion-item wow fadeInUp" data-wow-delay=".1s">
                    <h3 class="accordion-header" id="faq_heading7">
                      <button type="button" data-bs-toggle="collapse" data-bs-target="#faq_collapse7" aria-expanded="false" aria-controls="faq_collapse7">
                        정기구독 해지는 어떻게 하나요?
                      </button>
                    </h3>
                    <div id="faq_collapse7" class="collapse" aria-labelledby="faq_heading7" data-bs-parent="#faq_accordion">
                      <div class="accordion-body pt-0">
                        <p class="mb-0">
                          정기구독 해지는 정기결제 전에 나의 구독 정보에서 해지 가능합니다. 
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!-- faq_section - end
        ================================================== -->

      </main>
      <!-- main body - end
      ================================================== -->

      <!-- footer_section - start
      ================================================== -->
    <jsp:include page="footer.jsp"></jsp:include>
