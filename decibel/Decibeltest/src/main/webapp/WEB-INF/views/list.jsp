<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- CSS Files -->
<link rel="stylesheet" href="resources/css/list.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/list_main.css"> 
<link rel="stylesheet" 
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">


<title>Insert title here</title>
</head>
<body>
<audio id="music">
    Your browser does not support HTML5 Audio!
</audio>
    <div class="content">
      <div class="container">
              <div class="list">
              <ul id="music-list">
                <div class="listname"><i class="fas fa-angle-left"></i>   녹음리스트<br/><br/></div>
                <li>     
                  <div class="wrapper">
                    <div></div>
                    <div>title</div>
                    <div>talk</div> 
                    <div>time</div>
                  </div>
                </li>
              <hr>
              </ul>
  
              <div class="controll-panel">
                <div class="center">
                  <span class="prev-btn controll-btn">
                    <i class="fas fa-step-backward"></i>
                  </span>	
                </div>
                <div class="center">
                  <span class="play-btn controll-btn">
                    <i class="far fa-play-circle"></i>
                  </span>
                  <span class="pause-btn controll-btn hidden">
                    <i class="far fa-pause-circle"></i>
                  </span>
                </div>
                <div class="center">
                  <span class="next-btn controll-btn">
                    <i class="fas fa-step-forward"></i>
                  </span>
                </div>
              </div>
              <div class="progress-panel">
                <div id="start-time">00:00</div>
                <progress id="progress-bar" value="0" max="100"></progress>
                <div id="end-time">00:00</div>
              </div>
        </div>         
    </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="resources/js/list.js"></script>

</body>
</html>