<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="resources/css/main.css">
  <link rel="stylesheet" href="resources/css/menu.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">


<!-- <script src="js/stt.js"></script> -->


</head>

<body>
	<%
		String data = request.getParameter("result");
		out.print(data);
	%>
	
	<!-- <input id = "bStart" type = "button" value = "stt 시작하는 버튼 자동화 시켜서 필요" onclick = "start();"></input> --> 
	   
  <div class="firstinfo"><img src="https://randomuser.me/api/portraits/lego/6.jpg">
  </div>
  <h3 class = "name" style="font-family: 'Gowun Dodum', sans-serif; " >이태일님 환영합니다</h3>
  
  <!-- login -->
    <div class="content">
      <div class="container">
              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                      <p class = "speak" id = "output" style = "color : black; font-family : 'Gowun Dodum', sans-serif; ">상대방 말이 표시됩니다.</p>
                  </div>

                  <div class="card-body1" >
                    <p class = "speak" id="sound-clips" style = "color : black; font-family : 'Gowun Dodum', sans-serif; "><%=data %></p>
                </div>
                  
                </div>
              </div>
              
              <div class="frame">
                <input type="checkbox" id="cb-1" name="cb" class="checkbox"> 
                <label for="cb-1" class="label"></label>
                
                <div class="microphone">
                  <svg width="85px" height="85px" viewBox="0 0 100 100">
                    <circle class="circle" cx="50" cy="50" r="47"/>
                  </svg>
                  <div class="icon">
                    <div class="body">
                      <div class="fill"></div>
                    </div>
                    <div class="foot_v"></div>
                    <div class="foot_h"></div>
                  </div>
                  <div class="dots">
                    <div class="dot dot-1"></div>
                    <div class="dot dot-2"></div>
                    <div class="dot dot-3"></div>
                  </div>
                </div>
              </div>
          
      </div>
    
    </div>
  </div>

    
  
    </body> 
    <script src="resources/js/jquery-3.6.0.min.js"></script>
    <script src="resources/js/main.js"></script> 
    <script src="resources/js/record.js"></script>
    <script src="resources/js/stt.js"></script>
</html>