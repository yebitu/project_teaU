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

                    <title>board_create</title>
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

                        .select_img img {
                            margin: 30px 0;
                        }
                    </style>
                    <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
                    <script>
                        $(document).ready(function () {

                        });

                        function nullvaluealert() {
                            if (!document.create.boardTitle.value || document.create.boardTitle.value.trim() == "") {
                                alert("글 제목을 입력하세요");

                                return false;
                            }
                            if (!document.create.boardContent.value || document.create.boardContent.value.trim() == "") {
                                alert("글 내용을 입력하세요");

                                return false;
                            }


                        }

                        $("#uploadFile").change(function () {
                            if (this.files && this.files[0]) {
                                var reader = new FileReader;
                                reader.onload = function (data) {
                                    $(".select_img img").attr("src", data.target.result).width(500);
                                }
                                reader.readAsDataURL(this.files[0]);
                            }
                        });
                    </script>
                </head>


                <body>
                    <%@include file="header.jsp" %>

                        <!-- contact_section - start
        ================================================== -->



                        <form name="create" action="boardCreate.do" method="post" enctype="multipart/form-data"
                            onsubmit="return nullvaluealert()">
                            <section class="contact_section sec_ptb_120 bg_default_gray">
                                <div class="container">
                                    <div class="contact_form bg_white wow fadeInUp" style="margin-top: 100px;"
                                        data-wow-delay=".1s">

                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form_item">
                                                    <h1>리뷰를 적어주세요.</h1>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form_item">

                                                </div>
                                            </div>
                                        </div>

                                        <div>
                                            <input type="radio" id="boardCate" name="boardCate" value="1" checked>
                                            <label for="씨앗">씨앗</label>
                                            <input type="radio" id="boardCate" name="boardCate" value="2">
                                            <label for="새싹">새싹</label>
                                            <input type="radio" id="boardCate" name="boardCate" value="3">
                                            <label for="새싹">랭킹</label>
                                        </div>

                                        <div class="form_item">
                                            <input type="text" name="boardTitle" placeholder="제목을 입력해주세요">
                                        </div>
                                        <div class="form_item">
                                            <input type="text" name="boardWriter" placeholder="사람을 입력해주세요"
                                                value="${member.memberId}" readonly>
                                        </div>
                                        <div class="form_item">
                                            <textarea name="boardContent" placeholder="내용을 입력해주세요 :"></textarea>
                                        </div>

                                        <div class="inputArea">
                                            <label for="boardImgm">이미지</label>
                                            <br />
                                            <input type="file" id="uploadFile" name="uploadFile" />
                                            <div class="select_img"><img src="" /></div>


                                        </div>

                                        <!-- <div class="file1">
                                    Thumbnail File : <input type="file" name="file" accept="image/*">
                                </div>
                                <br />
                                <div class="file2">
                                    Main File &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input
                                        type="file" name="file" accept="image/*">
                                </div> -->

                                        <div class="text-center">
                                            <button type="submit" class="btn btn_primary text-uppercase">등록</button>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </form>
                        <!-- contact_section - end
        ================================================== -->



                        </main>
                        <!-- main body - end
      ================================================== -->
                        <%@include file="footer.jsp" %>

                </body>

                </html>