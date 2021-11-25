<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="./resources/css/Join_Login.css">
  
    
</head>
<body>
  <form method = "post">
  <!-- login -->
    <div class="content">
      <div class="container">
        <!-- <img class="bg-img" src="https://mariongrandvincent.github.io/HTML-Personal-website/img-codePen/bg.jpg" alt=""> -->
          <div class="menu">
            <a href="#connexion" class="btn-connexion"><h2>로그인</h2></a>
            <a href="#enregistrer" class="btn-enregistrer active"><h2>회원가입</h2></a>
          </div>
          <hr id="menu_hr">
          <div class="connexion">
            <div class="contact-form">
              <label>이메일</label>
              <input placeholder="" type="text" name = "member_email">
              
              <label>비밀번호</label>
              <input placeholder="" type="password" name = "member_pw">
              
              <div class="check">
                <label>				
                  <input id="check" type="checkbox" class="checkbox" >
                    <svg xmlns="http://www.w3.org/2000/svg" width="26px" height="23px">
                      <path class="path-back"  d="M1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
                      <path class="path-moving" d="M24.192,3.813L11.818,16.188L1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
                    </svg>
                </label>
                <h3>로그인 유지</h3>
              </div>
              
              <input class="submit" value="로그인" type="submit">
            </div>
            
            <hr>
            <a href="https://www.grandvincent-marion.fr/" target="_blank"><h4>비밀번호를 잊으셨나요?</h4></a>
          </div>
          
          <div class="enregistrer active-section">
            <div class="contact-form">
              <label>닉네임</label>
              <input placeholder="" type="text"  name ="member_nickname">
              
              <label>이메일</label>
              <input placeholder="" type="text" name = "member_email">	
              
              <label>비밀번호</label>
              <input placeholder="" type="text" name = "member_pw">
              
              <div class="check">
                <label>				
                  <input id="check" type="checkbox" class="checkbox">
                    <svg xmlns="http://www.w3.org/2000/svg" width="26px" height="23px">
                      <path class="path-back"  d="M1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
                      <path class="path-moving" d="M24.192,3.813L11.818,16.188L1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
                    </svg>
                </label>
                <h3>동의하기</h3>
              </div>
              
              <input class="submit" value="회원가입" type="submit" >	
                
            </div>
          </div>
          
      </div>
    
    </div>

  	<script src="./resources/js/jquery-3.6.0.min.js"></script>
    <script src="./resources/js/Join_Login.js"></script> 
    </form>
    </body> 

  
</html>