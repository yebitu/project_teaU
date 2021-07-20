<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>Subscribe</title>
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
  <!-- main body - start
      ================================================== -->
    <main>
      <!-- blog_section - start
        ================================================== -->
      <section class="blog_section sec_ptb_120" style="">
        <div class="container">

          <div class="section_title text-uppercase text-center selectTitle">
            <h3 id="subSeed" class="big_title wow fadeInUp" data-wow-delay=".2s">원하시는 구독 종류를 선택해주세요.</h3>
          </div>

          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="blog_grid wow fadeInUp" data-wow-delay=".1s">
                <a class="item_image" onclick="loginCheck('subscribe_seed.do')">
                  <img src="assets/images/blog/select_seed.jpg" alt="image_not_found">
                </a>
                <div class="item_content">
                  <h3 class="item_title text-uppercase">
                    <a onclick="loginCheck('subscribe_seed.do')">
                   	   씨앗구독 <!-- (초심자용 구독) -->
                    </a>
                  </h3>
                  <p>
                    우리에게 익숙한 차를 랜덤 박스 형식으로 선물 받아보세요!
                  </p>
                  <span style="font-size:24px;">19,900원</span>
                </div>

              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="blog_grid wow fadeInUp" data-wow-delay=".2s">
                <a class="item_image" onclick="loginCheck('subscribe_leaf.do')">
                  <img src="assets/images/blog/select_leaf.jpg" alt="image_not_found">
                </a>
                <div class="item_content">
                  <h3 class="item_title text-uppercase">
                    <a onclick="loginCheck('subscribe_leaf.do')">
                      새싹구독 <!-- (중급자용 구독) -->
                    </a>
                  </h3>
                  <p>
                    차를 즐기는 또 다른 방법, 블렌딩 차를 랜덤으로 선물 받아보세요!
                  </p>
                    <span style="font-size:24px;">29,900원</span>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="blog_grid wow fadeInUp" data-wow-delay=".3s">
                <a class="item_image" onclick="loginCheck('subscribe_tree.do')">
                  <img src="assets/images/blog/select_tree.jpg" alt="image_not_found">
                </a>
                <div class="item_content">
                  <h3 class="item_title text-uppercase">
                    <a onclick="loginCheck('subscribe_tree.do')">
                      나무구독 <!-- (고급자용 구독) -->
                    </a>
                  </h3>
                  <p>
                    이제는 블렌딩도 내 방식대로!
                    <br />
                    &nbsp;
                  </p>
                    <span style="font-size:24px;">34,900원</span>
                </div>
              </div>
            </div>
          </div>



        </div>
      </section>
      <!-- blog_section - end
        ================================================== -->

    </main>
    <!-- main body - end
      ================================================== -->
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">

/* let seed = "subscribe_seed.do";
let leaf = "subscribe_leaf.do";
let tree = "subscribe_tree.do"; */

</script>
</body>
</html>