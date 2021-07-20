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

            <title>새싹 &#38; 나무 리뷰</title>
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

<!-- breadcrumb_section - start
            ================================================== -->
            <section class="breadcrumb_section0919 text-uppercase"
                style="background-position: 70% 40%; background-image: url(./assets/images/breadcrumb/magazine.jpg);">
                <div class="container">
                    <h1 class="page_title wow text-white fadeInUp" data-wow-delay=".1s">새싹 &#38; 나무 리뷰</h1>
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
            ==================================================


              <!-- details_section - start
        ================================================== -->
              <form action="tbBoard.do" method="post">
                <section class="details_section blog_details sec_ptb_120">
            
                  <div class="container">
                    <div class="row justify-content-md-right justify-content-sm-right">

                      <c:forEach items="${boardListB }" var="board">
                        <div class="col-lg-4 col-md-6" style="padding-bottom: 40px;">
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
                    </div>
                  </div>

                  <div class="container">
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
                </section>
              </form>
              <div id="pagingDiv">
                <c:if test="${pagingB.prev}">
                  <a href="${pagingB.startPage - 1 }">〈</a>
                </c:if>
                <c:forEach var="num" begin="${pagingB.startPage}" end="${pagingB.endPage }">
                  <c:if test="${pagingB.cri.pageNum == num }">
                    <a href="${num }" style="background-color:#fd6c44; color:white;">${num }</a>
                  </c:if>
                  <c:if test="${pagingB.cri.pageNum != num }">
                    <a href="${num }">${num }</a>
                  </c:if>
                </c:forEach>
                <c:if test="${pagingB.next}">
                  <a id="next" href="${pagingB.endPage + 1 }">〉</a>
                </c:if>
              </div>

              <form id="pagingFrm" name="pagingForm" action="tbBoard.do" method="get">
                <input type="hidden" id="searchCondition" name="searchCondition"
                  value="${pagingB.cri.searchCondition }">
                <input type="hidden" id="searchKeyword" name="searchKeyword" value="${pagingB.cri.searchKeyword }">
                <input type="hidden" id="pageNum" name="pageNum" value="${pagingB.cri.pageNum }">
                <input type="hidden" id="amount" name="amount" value="${pagingB.cri.amount }">
              </form>
              <!-- details_section - end
        ================================================== -->

              </main>
              <!-- main body - end
      ================================================== -->

              <%@include file="footer.jsp" %>
          </body>

          </html>