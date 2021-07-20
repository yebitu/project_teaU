<%@ page import="java.util.List" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
          <!doctype html>
          <html lang="en">

          <head>

            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta http-equiv="x-ua-compatible" content="ie=edge">

            <title>랭킹 게시판</title>
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
            <script type="text/javascript">
              $(document).ready(function () {

                //페이지 번호 이동
                $('#pagingDiv a').click(function (e) {
                  e.preventDefault();
                  $('#pageNum').val($(this).attr("href"));
                  pagingForm.submit();

                });
              });
            </script>
            <style>
              #pagingDiv {
                background-color: white;
                text-align: center;

              }

              #pagingDiv a {
                border: 1px solid #e6e6e6;
                width: 35px !important;
                height: 35px !important;
                display: inline-block;
                font-size: 20px;
                align-items: center;
                justify-content: center;
                color: #999999;
              }
            </style>
          </head>


          <body>
            <%@include file="header.jsp" %>

              <!-- details_section - start
        ================================================== -->
              <form action="rankBoard.do" method="post">
                <section class="details_section blog_details sec_ptb_120">
                  <div class="container">
                    <div class="reserve_table_form wow fadeInUp" data-wow-delay=".1s"
                      style="padding-bottom: 60px; background-color: white">
                      <h2 class="form_title text-center text-uppercase">이달의 차 랭킹</h2>
                      <div class="row justify-content-center">
                        <div class="col-lg-10">
                          <div class="faq_accordion" id="faq_accordion">

                            <c:forEach items="${boardOrderList}" var="board" begin="0" end="2" varStatus="status">
                              <div class="accordion-item wow fadeInUp" data-wow-delay=".1s">
                                <h3 class="accordion-header" id="faq_heading1" style="background-color: #f7f7f7">
                                  <button type="button" data-bs-toggle="collapse" data-bs-target="#faq_collapse1"
                                    aria-expanded="false" aria-controls="faq_collapse1">

                                    <c:choose>
                                      <c:when test="${status.count eq 1 }">
                                        <i class="fas fa-crown" style="color: #ccb801;"></i>
                                      </c:when>
                                      <c:when test="${status.count eq 2 }">
                                        <i class="fas fa-crown" style="color: #888888;"></i>
                                      </c:when>
                                      <c:when test="${status.count eq 3 }">
                                        <i class="fas fa-crown" style="color: #b4781e;"></i>
                                      </c:when>
                                    </c:choose>

                                    <c:out value="${status.count}" />
                                    <a href="#"
                                      style="color: black; font-weight: bolder; margin-left: 20px;">${board.boardTitle}</a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vote: ${board.boardLikeCount } like
                                  </button>
                                </h3>


                                <div id="faq_collapse1" class="collapse" aria-labelledby="faq_heading1">
                                  <div class="accordion-body pt-0" style="background-color: #f7f7f7">
                                    <a href="boardViewer.do?boardId=${board.boardId }&boardImgm=${board.boardImgm}">
                                      <img src="resource/imgUpload/${board.boardImgm }" alt="image_not_found"
                                        style="height:100px; width:400px;"></a>
                                  </div>
                                </div>

                              </div>
                            </c:forEach>

                            <!-- <div class="accordion-item wow fadeInUp" data-wow-delay=".1s">
                              <h3 class="accordion-header" id="faq_heading2">
                                <button class="collapsed" type="button" data-bs-toggle="collapse"
                                  data-bs-target="#faq_collapse2" aria-expanded="false" aria-controls="faq_collapse2">
                                  <i class="fas fa-crown" style="color: #888888;"></i>
                                  2위
                                  <a href="#!" style="color: black; font-weight: bolder; margin-left: 20px;">돼지감자차</a>
                                  <a href="#!" style="color:#ff0000; float:right"><i class="fal fa-heart"></i> 512
                                    like</a>
                                </button>
                              </h3>
                              <div id="faq_collapse2" class="collapse" aria-labelledby="faq_heading2"
                                data-bs-parent="#faq_accordion">
                                <div class="accordion-body pt-0">
                                  <img src="./assets/images/meta/img_02.png">
                                </div>
                              </div>
                            </div> -->

                            <!-- <div class="accordion-item wow fadeInUp" data-wow-delay=".1s">
                              <h3 class="accordion-header" id="faq_heading3">
                                <button class="collapsed" type="button" data-bs-toggle="collapse"
                                  data-bs-target="#faq_collapse3" aria-expanded="false" aria-controls="faq_collapse3">
                                  <i class="fas fa-crown" style="color: #b4781e;"></i>
                                  3위
                                  <a href="#!" style="color: black; font-weight: bolder; margin-left: 20px;">달의 마테차</a>
                                  <a href="#!" style="color:#ff0000; float:right"><i class="fal fa-heart"></i> 256
                                    like</a>
                                </button>
                              </h3>
                              <div id="faq_collapse3" class="collapse" aria-labelledby="faq_heading3"
                                data-bs-parent="#faq_accordion">
                                <div class="accordion-body pt-0">
                                  <img src="./assets/images/slider/shape_01.png">
                                </div>
                              </div>
                            </div> -->
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="container">
                    <div class="row justify-content-lg-between justify-content-md-center justify-content-sm-center">

                      <c:forEach items="${boardListR }" var="board">
                        <div class="col-lg-6 col-md-6 magazine_pad" style="padding-bottom: 20px;">
                          <div class="details_content mb-0">
                            <div class="details_image wow fadeInUp" data-wow-delay=".1s">
                              <a href="boardViewer.do?boardId=${board.boardId }&boardImgm=${board.boardImgm}">
                                <img src="resource/imgUpload/${board.boardImgm }" alt="image_not_found"
                                  style="height:300px; width: 1000px">
                              </a>
                            </div>
                            <div class="wrap_space card" style="height: 200px">
                              <ul class="post_meta ul_li wow fadeInUp" data-wow-delay=".1s">
                                <li><a href="#!"><i class="fal fa-user"></i>${board.boardWriter }</a></li>
                                <li><i class="fal fa-calendar-alt"></i>${board.boardRegdate }</li>
                                <li>vote: ${board.boardLikeCount } like </li>
                              </ul>

                              <h2 class="details_title text-uppercase wow fadeInUp" data-wow-delay=".1s"><a
                                  href="boardViewer.do?boardId=${board.boardId }&boardImgm=${board.boardImgm}">${board.boardTitle}

                                  <c:if test="${board.replyCount ne 0}">
                                    <small><b>[&nbsp;
                                        <c:out value="${board.replyCount}" />&nbsp;]
                                      </b></small>
                                  </c:if>

                                </a></h2>
                            </div>
                          </div>
                        </div>

                      </c:forEach>
                      <div class="container">
                        <!-- <div class="row"> -->
                        <div class="col"
                          style="display: flex; justify-content:space-between; align-items : center; text-align: right">

                          <!--    컨트롤러의 list.do로 맵핑되고, user_id, title, content값을 매개값으로 넘긴다.					
					                        	검색옵션은 작성자, 제목, 내용, 작성자+제목+내용으로 검색할 수 있도록 한다. -->


                          <!-- 검색 시작 -->
                          <div class="col-lg-2"></div>
                          <div class="col-lg-4">
                            <div style="display: flex; justify-content: center;">
                              <select name="searchCondition">
                                <c:forEach items="${conditionMap }" var="option">
                                  <c:if test="${option.value == 'TITLE'}">
                                    <option value="${option.value }">제목
                                  </c:if>
                                  <c:if test="${option.value == 'CONTENT'}">
                                    <option value="${option.value }">내용
                                  </c:if>
                                  <c:if test="${option.value == 'WRITER'}">
                                    <option value="${option.value }">작성자
                                  </c:if>
                                </c:forEach>
                              </select>
                              &nbsp;&nbsp;
                              <input id="searchKeyword" name="searchKeyword" type="text" />
                              &nbsp;&nbsp;
                              <input type="submit" value="검색" />
                            </div>
                          </div>
                          <!-- 검색 끝  -->
                          <div class="col-lg-2">
                            <c:if test="${member.memberId == null }">
                              <a class="btn btn_primary text-uppercase" href="login.do">글쓰기</a>
                            </c:if>
                            <c:if test="${member.memberId != null }">
                              <a class="btn btn_primary text-uppercase" href="boardCreateMove.do?boardCate=1">글쓰기</a>
                            </c:if>

                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </section>
              </form>
              <div id="pagingDiv">
                <c:if test="${pagingR.prev}">
                  <a href="${pagingR.startPage - 1 }">〈</a>
                </c:if>
                <c:forEach var="num" begin="${pagingR.startPage}" end="${pagingR.endPage }">
                  <c:if test="${pagingR.cri.pageNum == num }">
                    <a href="${num }" style="background-color:#fd6c44; color:white;">${num }</a>
                  </c:if>
                  <c:if test="${pagingR.cri.pageNum != num }">
                    <a href="${num }">${num }</a>
                  </c:if>
                </c:forEach>
                <c:if test="${pagingR.next}">
                  <a id="next" href="${pagingR.endPage + 1 }">〉</a>
                </c:if>
              </div>

              <form id="pagingFrm" name="pagingForm" action="rankBoard.do" method="get">
                <input type="hidden" id="searchCondition" name="searchCondition"
                  value="${pagingR.cri.searchCondition }">
                <input type="hidden" id="searchKeyword" name="searchKeyword" value="${pagingR.cri.searchKeyword }">
                <input type="hidden" id="pageNum" name="pageNum" value="${pagingR.cri.pageNum }">
                <input type="hidden" id="amountR" name="amountR" value="${pagingR.cri.amountR }">
              </form>
              <!-- details_section - end
        ================================================== -->


              <!-- main body - end
      ================================================== -->

              <%@include file="footer.jsp" %>
          </body>

          </html>