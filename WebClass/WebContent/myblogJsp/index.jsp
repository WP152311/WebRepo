<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>vvsos1's Blog</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
        crossorigin="anonymous">

</head>

<!-- 웹페이지 처음 로딩때도 세션이 있는지 확인-->

<body>

    <!-- NavBar -->
	<%@include file="nav.jsp" %>    


    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">Welcome!</h1>
            <p>아직 아이디가 없으신가요?</p>
            <!--Modal Button-->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#regModal">
                회원가입
        </button>
        </div>
    </div>

    <hr>

    </div>
    <!-- /container -->

    <!-- 회원가입 Modal -->
    <%@include file="regModal.jsp" %>
    <!-- Alert 모달 -->
    <%@include file="alertModal.jsp" %>

    <!-- bootstarp JavaScript -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
        crossorigin="anonymous"></script>

    <!--회원가입 로직-->
    <script src="/WebClass/js/myblog.js"></script>
    
    <% if (request.getAttribute("errorid") != null)  {%>
    <script> 
    alertModal('로그인 오류','아이디 또는 비밀번호가 틀립니다.');
    $('#loginId').val('<%=(String)request.getAttribute("errorid") %>');
    </script>
    <% } %>
</body>

</html>