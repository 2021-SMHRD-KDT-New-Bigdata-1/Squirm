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
<link rel="stylesheet" href="./resources/css/list.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" type="text/css"
	href="./resources/css/loading-bar.css">
<link rel="stylesheet" type="text/css"
	href="./resources/css/loading-bar.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">

<!-- <script src="js/stt.js"></script> -->


</head>
<style>
rect#progress {
	transition: all 10s linear;
}
</style>

<body>

	<%
		String data = request.getParameter("result");
	%>

	<!-- login -->
	<class= "content">
	<div class="container">
		<div class="col-md-6 grid-margin stretch-card" overflow: auto>

			<script type="text/javascript"
				src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


			<div class="allWrap">
				<div class="tabBox">
					<p class="tab-link current" data-tab="tab-1">
						<span><img src="http://mmctxt.com/link/img/icon01.png"
							alt="icon" /></span> 학습한거
					</p>
					<p class="tab-link" data-tab="tab-2">
						<span><img src="http://mmctxt.com/link/img/icon02.png"
							alt="icon" /></span> 학습해야할거
					</p>
				</div>
				<div id="tab-1" class="tab-content current">

					<button class="button" onclick="cssChange()">
						<a>안녕하세요</a>
					</button>
					<button class="button" onclick="cssChange()">
						<a>사랑해요</a>
					</button>
					<button class="button" onclick="cssChange()">
						<a>너무 보고싶어요 </a>
					</button>

					<button class="button" onclick="cssChange()">
						<a>그동안 고생했어요 </a>
					</button>

					<button class="button" onclick="cssChange()">
						<a>다음에 꼭 봐요 </a>
					</button>

					<button class="button" onclick="cssChange()">
						<a>엄마 아빠 사랑해요</a>
					</button>

					<button class="button" onclick="cssChange()">
						<a>정말 고마워</a>
					</button>
					<button class="button" onclick="cssChange()">
						<a>다시 만나요</a>
					</button>
					<button class="button" onclick="cssChange()">
						<a>축하 해요</a>
					</button>
					<button class="button" onclick="cssChange()">
						<a>응원 할게요</a>
					</button>
					<button class="button" onclick="cssChange()">
						<a>메리 크리스마스</a>
					</button>
					<button class="button" onclick="cssChange()">
						<a>새해복 많이</a>
					</button>
					<button class="button" onclick="cssChange()">
						<a>행복해요</a>
					</button>
					<button class="button" onclick="cssChange()">
						<a>미안해요</a>
					</button>
					<button class="button" onclick="cssChange()">
						<a>고생했어</a>
					</button>
				</div>

				<div id="tab-2" class="tab-content">


					<button class="button" onclick="cssChange()">
						<a>그때 참 좋았는데말야</a>
					</button>
					<button class="button"">
						<a id="change">때론 외롭고 슬퍼도 말야</a>
					</button>
					<button class="button" onclick="cssChange1()">
						<a id="change1">싱잉 나나나</a>
					</button>
					<button class="button">
						<a id="change">내일은 비가 온데요</a>
					</button>
					<button class="button" onclick="cssChange2()">
						<a id="change2">유자향이 참 좋아요</a>
					</button>
					<button class="button">
						<a id="change">치타인가 새인가</a>
					</button>
					<button class="button">
						<a id="change">널위해 서라면</a>
					</button>
					<button class="button" onclick="cssChange3()">
						<a id="change3">잊어버렸어</a>
					</button>
					<button class="button">
						<a id="change">나도내가 누구였는지</a>
					</button>
					<button class="button" onclick="cssChange4()">
						<a id="change4">아파도 강한척 할수가</a>
					</button>
					<button class="button" onclick="cssChange5()">
						<a id="change5">이뤄지지 않는 꿈</a>
					</button>
					<button class="button">
						<a id="change">널위해 예쁜 거짓을</a>
					</button>
					<button class="button">
						<a id="change">페이크 러브</a>
					</button>
					<button class="button">
						<a id="change">홀로남은 설국열차</a>
					</button>
					<button class="button">
						<a id="change">그 봄날이 올까</a>
					</button>
					<button class="button">
						<a id="change">조금더 빨리</a>
					</button>
					<button class="button">
						<a id="change">눈꽃이 떨어져요</a>
					</button>
					<button class="button">
						<a id="change">또 조금씩 멀어져요</a>
					</button>
					<button class="button">
						<a id="change">보고싶다</a>
					</button>
					<button class="button">
						<a id="change">얼마나 기다려야</a>
					</button>
					<button class="button">
						<a id="change">또 몇밤을 또새워야</a>
					</button>
					<button class="button">
						<a id="change">만나게될까</a>
					</button>
					<button class="button">
						<a id="change">그곳에 좀 더 머물러줘</a>
					</button>
					<button class="button">
						<a id="change">니가 변한건지</a>
					</button>
					<button class="button">
						<a id="change">아니면 내가 변한건지</a>
					</button>
					<button class="button">
						<a id="change">보고 싶은데</a>
					</button>
					<button class="button">
						<a id="change">연기처럼 하얀 연기처럼</a>
					</button>

				</div>
				<script>
					function cssChange1() {
						var x = document.getElementById("change1");
						x.style.color = "blue";

					}
					function cssChange2() {
						var x = document.getElementById("change2");
						x.style.color = "blue";
					}
					function cssChange3() {
						var x = document.getElementById("change3");
						x.style.color = "blue";
					}
					function cssChange4() {
						var x = document.getElementById("change4");
						x.style.color = "blue";

					}
					function cssChange5() {
						var x = document.getElementById("change5");
						x.style.color = "blue";
					}
					function cssChange6() {
						var x = document.getElementById("change6");
						x.style.color = "blue";
					}
				</script>
				<script>
					$(".tab-link").click(function() {
						var tab_id = $(this).attr("data-tab");

						$(".tab-link").removeClass("current");
						$(".tab-content").removeClass("current");

						$(this).addClass("current");
						$("#" + tab_id).addClass("current");
					});
				</script>

				<style>
.allWrap {
	width: 100%;
	margin: 0 auto;
}

.tabBox {
	margin: 20px 0;
}

.tab-link {
	width: 43%;
	display: inline-block;
	padding: 10px;
	text-align: center;
	background-color: #929090;
	border-radius: 20px;
	color: #fff;
	cursor: pointer;
}

.tab-link.current {
	background-color: #4b49ac;
	font-weight: 600;
}

.tab-content {
	display: none;
}

.tab-content.current {
	display: block;
	width: 100%;
	height: 100%;
	font-size: 10px;
	text-align: center;
}
</style>




				<div class="frame">

					<p id="gotrain">학습시키기</p>
				</div>
			</div>
		</div>
</body>
<script type="text/javascript"> 
var header = document.getElementById('gotrain');
header.onclick = function() { 

	location.href='train2.do'
}
</script>


<script src="./resources/js/jquery-3.6.0.min.js"></script>
<script src="./resources/js/main.js"></script>
<script src="./resources/js/record_train.js"></script>

<!-- <script src="./resources/js/stt.js"></script> -->




</html>
