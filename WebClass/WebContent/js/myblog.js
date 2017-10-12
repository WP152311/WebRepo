//$(document).ready(function () {
//    $('#regForm').submit(function () {
//        // 자동 submit되는 기능을 막음
//            event.preventDefault();
//
//            var id = document.getElementById('id').value;
//            var password = document.getElementById('password').value;
//            var classroom = $("select[name=class]").val();
//            var grade = $(":input:radio[name=grade]:checked").val();
//            var studentId = document.getElementById('studentId').value;
//            var studentName = document.getElementById('studentName').value;
//        
//            console.log('id : ' + id);
//            console.log('password : ' + password);
//            console.log('classroom : ' + classroom);
//            console.log('grade : ' + grade);
//            console.log('studentId : ' + studentId);
//            console.log('studentName : ' + studentName);
//        
//            // 입력칸 중 빈칸이 있는 경우
//            if (id == "" || password == "" || classroom == "" || grade == "" || studentId == "" || studentName == "") {
//                return;
//            }
//
//            // 더미서버로 회원가입 정보 보내기
//            $.post("/WebClass/bloglogin",
//                { id: id, password: password, classroom: classroom, grade: grade, studentId: studentId, studentName: studentName }, function (data) {
//                    if (data.msg == "success") { // 회원가입 성공한 경우
//                    	// 회원가입에 성공했으므로 회원가입 Modal 숨기기
//                        $('#regModal').modal('hide');
//                        // 회원가입 성공 Modal 띄우기
//                        alertModal("회원가입 정보", data.user.studentName + "님 회원가입되었습니다.");
//                        // 회원가입 성공했으므로 폼에 있는 데이터 삭제
//                        document.regForm.reset();
//                    } else if (data.msg == "fail") { // 회원가입에 실패한 경우
//                    	alertModal("회원가입 정보", "회원가입에 실패했습니다.");
//                    } else { // 그 이외 경우(EX)서버가 다운된 경우)
//                    	alertModal("회원가입 정보", "알 수 없는 오류가 발생했습니다. ");
//                    }
//                });
//    });
//    
//});

// function registration() {
//     var id = document.getElementById('id').value;
//     var password = document.getElementById('password').value;
//     var classroom = $("select[name=class]").val();
//     var grade = $(":input:radio[name=grade]:checked").val();
//     var studentId = document.getElementById('studentId').value;
//     var studentName = document.getElementById('studentName').value;

//     console.log('id : ' + id);
//     console.log('password : ' + password);
//     console.log('classroom : ' + classroom);
//     console.log('grade : ' + grade);
//     console.log('studentId : ' + studentId);
//     console.log('studentName : ' + studentName);

//     // 입력칸 중 빈칸이 있는 경우
//     if (id == "" || password == "" || classroom == "" || grade == "" || studentId == "" || studentName == "") {
//         return;
//     }

//     // 회원가입에 성공했으므로 회원가입 Modal 숨기기
//     $('#regModal').modal('hide');
//     // 회원가입 성공 Modal 띄우기
//     alertModal("회원가입 정보", studentName + "님 회원가입되었습니다.");
//     // 회원가입 성공했으므로 폼에 있는 데이터 삭제
//     document.regForm.reset();

// }

//function regModal() {
//    var regModal = $('#regModal');
//    regModal.modal();
//}

function checkSession() {
    var changableForm = document.getElementById('changableForm');

    // 만약 세션에 로그인 유저가 있다면
    if (sessionStorage.getItem('loginUser') != undefined) {
        var loginUser =sessionStorage.getItem('loginUser');
        changableForm.innerHTML = loginUser + "님. 안녕하세요.  &nbsp";
        changableForm.innerHTML += '<button type="button" class="btn btn-outline-dark" onclick="logout()">Logout</button>';
    } else {    // 만약 세션에 로그인 유저가 없다면
        changableForm.innerHTML = '<form class="form-inline my-2 my-lg-0" id="loginForm"><input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="id" id="loginId" required><input class="form-control mr-sm-2" type="password" placeholder="Password" aria-label="Password" id="loginPassword" required><button class="btn btn-outline-dark" type="submit">Login</button></form>';
        $('#loginForm').submit(function () {
            // 자동 submit되는 기능을 막음
            if (event.cancelable) {
                event.preventDefault();
            }

            var loginId = document.getElementById('loginId').value;
            var loginPassword = document.getElementById('loginPassword').value;

            // 만약 아이디 또는 비밀번호를 입력하지 않았다면
            if (loginId == "" || loginPassword == "") {
                return;
            }
            if (localStorage.getItem('loginUser') != undefined) {
                alertModal('로그인 오류', "이미 로그인 세션이 있습니다.");
            }

            // 더미서버로 로그인 정보 보내기
            $.post("http://httpbin.org/post", { loginId: loginId, loginPassword: loginPassword }, function (data) {
                // 세션에 로그인 유저 저장
                sessionStorage.setItem('loginUser', data.form.loginId);
                alertModal('로그인 정보', data.form.loginId + "님 로그인되었습니다.");
                checkSession();
            });

        });
    }
}

function logout() {
    // 로그인 세션 삭제
    sessionStorage.removeItem('loginUser');
    checkSession();
}

// function login() {
//     var loginId = document.getElementById('loginId').value;
//     var loginPassword = document.getElementById('loginPassword').value;

//     // 만약 아이디 또는 비밀번호를 입력하지 않았다면
//     if (loginId == "" || loginPassword == "") {
//         return;
//     }

//     var localUser = JSON.parse(localStorage.getItem(loginId));
//     // 만약 아이디 또는 비밀번호가 다르다면
//     if (localUser.id != loginId || localUser.password != loginPassword) {
//         alertModal("로그인 오류", "아이디 또는 비밀번호가 잘못되었습니다.");
//         return;
//     } else {    // 모두 맞다면
//         sessionStorage.setItem('loginUser', localStorage.getItem(loginId));
//         alertModal('로그인 정보', loginId+"님 로그인되었습니다.");
//         checkSession();
//     }

// }

// Modal로 Alert를 띄워줌
function alertModal(title, body) {
    // Modal 가져오기
    var myModal = $("#alertModal");
    // Modla 띄우기
    myModal.modal();
    // Modal 안의 내용 설정
    myModal.find('.modal-title').text(title);
    myModal.find('.modal-body').text(body)
}