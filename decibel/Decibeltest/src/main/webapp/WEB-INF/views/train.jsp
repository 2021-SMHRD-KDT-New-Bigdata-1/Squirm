<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./resources/css/main.css">
<link rel="stylesheet" href="./resources/css/menu.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" type="text/css" href="./resources/css/loading-bar.css">
<link rel="stylesheet" type="text/css" href="./resources/css/loading-bar.min.css">
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">


<!-- <script src="js/stt.js"></script> -->


</head>
<style>
rect#progress {
	transition: all 10s linear;
}
</style>

<body>

	<!-- login -->
<div class="content">
		<div class="container">
			<div class="col-md-6 grid-margin stretch-card">
				<div class="progress-bar" style="width: 65%; margin-top: 16%; margin-left: 18%;">
					<div class="ldBar" data-stroke="data:ldbar/res,gradient(0,1,#f99,#ff9)" data-type="fill">
		<svg xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" width="100%" height="100%" viewBox="5.5 3.5 89 13">
			<defs>
				<filter id="ldBar-2b78fe717ea45-filter" x="-1" y="-1" width="3" height="3">
					<feMorphology operator="dilate" radius="3"></feMorphology>
						<feColorMatrix values="0 0 0 0 1    0 0 0 0 1    0 0 0 0 1    0 0 0 1 0" result="cm"></feColorMatrix>
				</filter>
				<mask id="ldBar-2b78fe717ea45-mask">
					<image xlink:href="" filter="url(#ldBar-2b78fe717ea45-filter)" x="0" y="0" width="100" height="100" preserveAspectRatio="xMidYMid"></image>
				</mask>
				<g>
					<mask id="ldBar-2b78fe717ea45-mask-path">
						<path d="M10 10L90 10M90 8M90 12" fill="#fff" stroke="#fff" filter="url(#ldBar-2b78fe717ea45-filter)"></path>
					</mask>
				</g>
				<clipPath id="ldBar-2b78fe717ea45-clip">
					<rect class="mask" fill="#000"></rect>
				</clipPath>
				<pattern id="ldBar-2b78fe717ea45-pattern" patternUnits="userSpaceOnUse" x="0" y="0" width="150" height="150">
					<image x="0" y="0" width="150" height="150" xlink:href="./resources/123123.svg"></image>
				</pattern>
			</defs>
			<g>
				<path d="M10 10L90 10M90 8M90 12" fill="none" class="baseline" stroke="#ddd" stroke-width="0.5"></path>
			</g>
			<g>
			
				<!-- stroke-dasharray 부분 40:80이라고 하면 50%정도  -->
				

					<path d="M10 10L90 10M90 8M90 12" id="#one" class="mainline1" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="6 80" style = "display:none"></path>
				<!-- 클릭 두번할 때 마다 바 길이 조정 -->	
				 	<path d="M10 10L90 10M90 8M90 12" id="#two" class="mainline2" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="12 80" style = "display:none"></path>
					<path d="M10 10L90 10M90 8M90 12" id="#three" class="mainline3" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="18 80" style = "display:none"></path>
					<path d="M10 10L90 10M90 8M90 12" id="#three" class="mainline3" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="24 80" style = "display:none"></path>
					<path d="M10 10L90 10M90 8M90 12" id="#three" class="mainline3" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="30 80" style = "display:none"></path>
					<path d="M10 10L90 10M90 8M90 12" id="#three" class="mainline3" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="36 80" style = "display:none"></path>
					<path d="M10 10L90 10M90 8M90 12" id="#three" class="mainline3" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="42 80" style = "display:none"></path>
					<path d="M10 10L90 10M90 8M90 12" id="#three" class="mainline3" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="48 80" style = "display:none"></path>
					<path d="M10 10L90 10M90 8M90 12" id="#three" class="mainline3" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="54 80" style = "display:none"></path>
					<path d="M10 10L90 10M90 8M90 12" id="#three" class="mainline3" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="60 80" style = "display:none"></path>
					<path d="M10 10L90 10M90 8M90 12" id="#three" class="mainline3" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="65 80" style = "display:none"></path>
					<path d="M10 10L90 10M90 8M90 12" id="#three" class="mainline3" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="70 80" style = "display:none"></path>
					<path d="M10 10L90 10M90 8M90 12" id="#three" class="mainline3" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="75 80" style = "display:none"></path>
					<path d="M10 10L90 10M90 8M90 12" id="#three" class="mainline3" clip-path="" fill="none" stroke-width="3" stroke="url(#ldBar-2b78fe717ea45-pattern)" stroke-dasharray="80 80" style = "display:none"></path>

					 
					
			</g>
		</svg>


						<div class="ldBar" data-stroke=" data:ldbar/res, gradient(0,1,#f99,#ff9) "></div>
							
						</div>
					</div>


				</div>
			
			<div id="train_text_div">
				<span>무야호</span>
			</div>
			
			<div class="frame">
				<input type="checkbox" id="cb-1" name="cb" class="checkbox" value="1"> <label for="cb-1" class="label"></label>
				<div class="microphone" id = "microphone">
					<svg width="85px" height="85px" viewBox="0 0 100 100" id="microphone" onclick="count(&quot;plus&quot;)">
                <circle class="circle" cx="50" cy="50" r="47"></circle>
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
	</div>


</body>
<script src="./resources/js/jquery-3.6.0.min.js"></script>
<script src="./resources/js/main.js"></script>
<script src="./resources/js/record_train.js"></script>

<!-- <script src="./resources/js/stt.js"></script> -->




</html>