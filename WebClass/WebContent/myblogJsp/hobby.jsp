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
    <nav class="navbar navbar-expand-md navbar-light fixed-top bg-light">
        <a class="navbar-brand" href="index.html">Blog</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault"
            aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="hobby.html">Hobby</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="favorite.html">Favorite</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="dream.html">Dream</a>
                </li>
            </ul>
            <!-- 로그인 상태에 따라 바뀔 div -->
            <div id="changableForm">
            </div>
            &nbsp;<button class="btn btn-outline-dark" onclick="regModal()">Sign Up</button>
        </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">Hobby</h1>
        </div>
    </div>

    <div class="container">
        <!--Carousel-->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="../image/table-tennis.jpg" alt="First slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>탁구</h3>
                        <p>제가 할 수 있는 유일한 운동이며, 가족 공동의 취미입니다.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../image/coding.jpg" alt="Second slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>코딩</h3>
                        <p>고등학교 들어서 흥미를 붙인 취미이고, 자바에 가장 관심이 많습니다.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../image/game.jpg" alt="Third slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>게임</h3>
                        <p>앞으로도 변하지 않을 취미입니다. 최근에는 배틀그라운드를 즐기고 있습니다.</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
        </div>

        <hr>

    </div>
    <!-- /container -->

    <!-- 회원가입 Modal -->
    <div class="modal fade" id="regModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">회원가입</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <!--Modal 회원가입 폼-->
                <form name="regForm" id="regForm">
                    <div class="modal-body">
                        <!--아이디-->
                        <div class="form-group">
                            <label for="id">아이디</label>
                            <input type="text" class="form-control" id="id" placeholder="Enter ID" name="id" required>
                        </div>
                        <!--비밀번호-->
                        <div class="form-group">
                            <label for="password">비밀번호</label>
                            <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
                        </div>
                        <!--반-->
                        반 &nbsp;
                        <select class="custom-select mb-2 mr-sm-2 mb-sm-0" name="class">
                        <option value="1">1반</option>
                        <option value="2">2반</option>    <option value="3">3반</option>
                        <option value="4">4반</option>
                        <option value="5">5반</option>
                        <option value="6">6반</option>
                    </select>
                        <br>
                        <br>
                        <!--학년-->
                        학년 &nbsp;
                        <label class="custom-control custom-radio">
                            <input id="radio1" name="grade" type="radio" class="custom-control-input" value="1" checked>
                            <span class="custom-control-indicator"></span>
                            <span class="custom-control-description">1학년</span>
                    </label>
                        <label class="custom-control custom-radio">
                            <input id="radio2" name="grade" type="radio" class="custom-control-input" value="2">
                            <span class="custom-control-indicator"></span>
                            <span class="custom-control-description">2학년</span>
                    </label>
                        <label class="custom-control custom-radio">
                            <input id="radio3" name="grade" type="radio" class="custom-control-input" value="3">
                            <span class="custom-control-indicator"></span>
                            <span class="custom-control-description">3학년</span>
                    </label>
                        <!--번호-->
                        <div class="form-group">
                            <label class="form-control-label" for="studentId">번호</label>
                            <input type="text" class="form-control" id="studentId" name="studentId" required>
                        </div>
                        <!--이름-->
                        <div class="form-group">
                            <label class="form-control-label" for="studentName">이름</label>
                            <input type="text" class="form-control" id="studentName" name="studentName" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-primary">가입하기</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Alert 모달 -->
    <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" style="display: none;"
        aria-hidden="true" id="alertModal">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="mySmallModalLabel">alert</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                  </button>
                </div>
                <div class="modal-body">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
                </div>
            </div>
        </div>
    </div>

    <!-- bootstarp JavaScript -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
        crossorigin="anonymous"></script>

    <!--회원가입 로직-->
    <script src="../js/myblog.js"></script>
</body>

</html>