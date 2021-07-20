<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <% String boardId=request.getParameter("boardId"); String boardImgm=request.getParameter("boardImgm"); %>

                <!doctype html>
                <html lang="en">

                <head>

                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                    <meta http-equiv="x-ua-compatible" content="ie=edge">

                    <title>board_update</title>
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
                    <style>
                        .header_section {
                            background-color: white;
                        }
                    </style>
                    <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
                    <script>

                        var boardId = '<%=boardId%>';
                        var boardImgm = '<%=boardImgm%>';
                        $(document).ready(function () {
                            selectUpdate();
                            $('#boardId').val(boardId);
                            $('#boardImgm').val(boardImgm);
                        });

                        function selectUpdate() {

                            $.ajax({
                                type: 'POST',
                                url: 'updateBoardDetail.do',
                                dataType: 'json',
                                data: { 'boardId': boardId },
                                success: function (data) {

                                    $('#boardTitle').val(data['board'].boardTitle);
                                    $('#boardContent').val(data['board'].boardContent);

                                },
                                error: function (e) {
                                    console.log(e);
                                }
                            });

                        }
                    </script>

                </head>


                <body>
                    <%@include file="header.jsp" %>

                        <!-- contact_section - start
        ================================================== -->

                        <form action="boardUpdate.do" method="post" enctype="multipart/form-data">

                            <input type="hidden" name="boardId" id="boardId" />
                            <input type="hidden" name="boardImgm" id="boardImgm" />
                            <!--  <input type="hidden" name="boardImgm" value="<%=boardImgm%>">-->
                            <section class="contact_section sec_ptb_120 bg_default_gray">
                                <div class="container">
                                    <div class="contact_form bg_white wow fadeInUp" style="margin-top: 100px;"
                                        data-wow-delay=".1s">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form_item">
                                                    <h1>리뷰를 수정해주세요.</h1>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form_item">
                                            <input type="text" id="boardTitle" name="boardTitle" />
                                        </div>
                                        <div class="form_item">
                                            <textarea id="boardContent" name="boardContent"></textarea>
                                        </div>

                                        <!--     <form method="post" action="upload" enctype="multipart/form-data">

                                <div class="file1">
                                    Thumbnail File : <input type="file" name="file" accept="image/*">
                                </div>
                                <br />
                                <div class="file2">
                                    Main File &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: 
                                    <input type="file" name="file" accept="image/*">
                                </div>
                            </form> -->

                                        <div class="text-center">
                                            <button type="submit" class="btn btn_primary text-uppercase">수정
                                                완료</button>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </form>
                        <!-- contact_section - end
        ================================================== -->

                        <%@include file="footer.jsp" %>
                </body>

                </html>