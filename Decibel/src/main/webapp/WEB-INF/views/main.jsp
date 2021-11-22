 <%@page import="kr.smhrd.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
   $(document).ready(function() {
      loadList();
   });
   function loadList() {
      $.ajax({
         url : "boardListJson.do",
         type : "get",
         dataType : "json", // 서버로부터 받는 데이터타입
         success : jsonHtml, // callback 함수
         error : function() {alert("error")}
      });
   }                     //                     0      1
    function jsonHtml(data) { // data -> object(객체) : [ { json },{  },{  } ]
      view = "<table class='table table-hover'>";
      view += "<tr>";
      view += "<td>번호</td>";
      view += "<td>제목</td>";
      view += "<td>작성자</td>";
      view += "<td>작성일</td>";
      view += "<td>조회수</td>";
      if(${vo!=null}){
      view += "<td>수정</td>";
      view += "<td>삭제</td>";
      view += "</tr>";
      }
      $.each(data,function(index, obj) {
         view += "<tr>";
         view += "<td id='idx"+index+"'>" + obj.idx+ "</td>";
         view += "<td id='t"+index+"'><a href='javascript:ctFn("+ index + ")'>" + obj.title + "</a></td>";
         view += "<td id='w"+index+"'>" + obj.writer+ "</td>";
         view += "<td>" + obj.indate + "</td>";
         view += "<td>" + obj.count + "</td>";
                     
            if(${vo!=null}){
               if('${vo.userId}'==obj.userId){
                  view += "<td id='u"+index+"'>";
                  view += "<button class='btn btn-info btn-sm' onclick='updateTW("+ index + ")'>수정</button>&nbsp;";
                  view += "</td>";
                  view += "<td>";
                  view += "<button class='btn btn-warning btn-sm' onclick='delGo("+ obj.idx + ")'>삭제</button>";
                  view += "</td>";
                  }else{
                     view += "<td id='u"+index+"'>";
                     view += "<button disabled class='btn btn-info btn-sm' onclick='updateTW("+ index + ")'>수정</button>&nbsp;";
                     view += "</td>";
                     view += "<td>";
                     view += "<button disabled class='btn btn-warning btn-sm' onclick='delGo("+ obj.idx + ")'>삭제</button>";
                     view += "</td>";}
                  }
                     view += "</tr>";
                     view += "<tr id='ct"+index+"' style='display:none'>";
                     view += "<td colspan='7'>";
                     view += "<table class='table'>";
                     view += "<tr>";
                     view += "<td>내용</td>";
                     view += "<td><textarea rows='7' id='contents"+index+"' class='form-control'>"
                           + obj.contents + "</textarea></td>";
                     view += "</tr>";

                     view += "<tr>";
                     view += "<td colspan='7'>";
                     if(${vo!=null}){
                        if('${vo.userId}'== obj.userId){
                        view += "<zbutton class='btn btn-info btn-sm' onclick='updateFn("+ index + ")'>수정</button>&nbsp;";
                        }else{
                        view += "<button disabled class='btn btn-info btn-sm' onclick='updateFn("+ index + ")'>수정</button>&nbsp;";   
                        }
                     }
                     view += "<button class='btn btn-success btn-sm' onclick='closeFn("+ index + ")'>닫기</button>";
                     view += "</td>";
                     view += "</tr>";

                     view += "</table>";
                     view += "</td>";
                     view += "</tr>";

                  });
      if(${vo!=null}){
      view += "<tr>";
      view += "<td colspan='7'><button class='btn btn-primary btn-sm' onclick='goWrite()' >글쓰기</button></td>";
      view += "</tr>";
   }
      view += "</table>";
      $(".panel-body").html(view);
   }
   function delGo(idx) {
      $.ajax({
         url : "boardDeleteAjax.do",
         type : "get",
         data : {
            "idx" : idx},
         success : loadList,
         error : function() {alert("error");}
      });
   }

   function updateTW(index) {
      var title = $("#t" + index).text();
      var newTitle = "<input type='text' id='title"+index+"' class='form-control' value='"+title+"'>";
      $("#t" + index).html(newTitle);

      var writer = $("#w" + index).text();
      var newWriter = "<input type='text' id='writer"+index+"' class='form-control' value='"+writer+"'>";
      $("#w" + index).html(newWriter);

      var newButton = "<button class='btn btn-primary btn-sm' onclick = 'updateGo("
            + index + ")'>수정하기</button>";
      $("#u" + index).html(newButton);
   }
   function updateGo(index) {
      // idx, title, writer
      var idx = $("#idx" + index).text();
      var title = $("#title" + index).val();
      var writer = $("#writer" + index).val();
      $.ajax({
         url : "boardUpdateAjax1.do",
         type : "post", //post로 넘겨야 한글이 안깨짐
         data : {
            "idx" : idx,
            "title" : title,
            "writer" : writer
         },
         success : loadList,
         error : function() {
            alert("error");
         }
      });

   }
   function updateFn(index) {
      // idx, contents
      var idx = $("#idx" + index).text();
      var contents = $("#contents" + index).val();
      $.ajax({
         url : "boardUpdateAjax.do",
         type : "post",
         data : {
            "idx" : idx,
            "contents" : contents
         },
         success : loadList,
         error : function() {
            alert("error");
         }
      });
   }

   function closeFn(index) {
      $("#ct" + index).css("display", "none");
   }

   function ctFn(index) { // 닫혀있을 때 버튼 누르면 보이고 다시 누르면 닫히고
      if ($("#ct" + index).css("display") == "none") {
         $("#ct" + index).css("display", "table-row");
      } else {
         $("#ct" + index).css("display", "none");
      }
   }

   function goWrite() {
      if ($(".writeForm").css("display") == "block") {
         //$(".writeForm").css("display", "none");
         $(".writeForm").slideUp(600);
      } else {
         //$(".writeForm").css("display", "block");
         $(".writeForm").slideDown(600);
      }
      //$(".panel-body").css("display","none")
   }
   function insertFn() {
	   var title =$("title").val();
	   if(title==""){
		   alert("제목을 입력하세요");
		   $("#title").focus();
		   return false;
	   }
	   
	   var contents =$("contents").val();
	   if(contents==""){
		   alert("내용을 입력하세요");
		   $("#contents").focus();
		   return false;
	   }
	   
      var frmData = $("#frm").serialize(); // serialize() title = xxx & contetns = xxx & writer = xxx
      //alert(frmData)
      $.ajax({
         url : "boardInsertAjax.do",
         type : "post",
         data : frmData,
         success : loadList,
         error : function() {
            alert("error");
         }
      });

      $("#reset").trigger("click");

      $(".writeForm").css("display", "none");
   }
   
   function logout(){
      location.href="boardLogout.do";
   }
   
   function formCheck(){
      var userId = $("#userId").val();
      if(userId==""){
         alert("아이디를 입력하세요.");
         $("#userId").focus();
         return false;
      }
      var userPwd = $("#userPwd").val();
      if(userPwd==""){
         alert("패스워드를 입력하세요.");
         $("#userPwd").focus();
         return false;
      }
      $("#wform").submit();
   }
</script>
</head>
<body>

   <div class="container">
      <h2>Spring MVC BOARD2</h2>
      <div class="panel panel-default">
         <div class="panel-heading">
         <c:if test="${vo==null}">
            <form id="wform" class="form-inline" action="boardLogin.do" method="post">
               <div class="form-group">
                  <label for="userId">아이디:</label> <input type="text" class="form-control" id= "userId" name="userId">
               </div>
               <div class="form-group">
                  <label for="userPwd">비밀번호:</label> <input type="password" class="form-control" id="userPwd" name="userPwd">
               </div>
               
               <button type="button" class="btn btn-info btn-sm" onclick="formCheck()">로그인</button>
            </form>
         </c:if>
         <c:if test="${vo!=null }">
            <label>${vo.userName}님 방문을 환영합니다.</label>
            <button type="submit" class="btn btn-info btn-sm" onclick="logout()">로그아웃</button>
         </c:if>
         </div>
         
         <div class="panel-body"></div>
         <div class="writeForm" style="display: none;">
            <form id="frm" class="form-horizontal">
            <input type="hidden" name="userId" id="userId" value="${vo.userId }">
               <div class="form-group">
                  <label class="control-label col-sm-2" for="title">제목:</label>
                  <div class="col-sm-10">
                     <input type="text" class="form-control" id="title" name="title"
                        placeholder="Enter title">
                  </div>
               </div>
               <div class="form-group">
                  <label class="control-label col-sm-2" for="contents">내용:</label>
                  <div class="col-sm-10">
                     <textarea rows="10" class="form-control" id="contents"
                        name="contents"></textarea>
                  </div>
               </div>
               <div class="form-group">
                  <label class="control-label col-sm-2" for="writer">작성자:</label>
                  <div class="col-sm-10">
                     <input type="text" class="form-control" id="writer" name="writer" value="${vo.userName }">
                  </div>
               </div>
               <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                     <button type="button" class="btn btn-success btn-sm"
                        onclick="insertFn()">등록</button>
                     <button type="reset" class="btn btn-info btn-sm" id="reset">취소</button>
                  </div>
               </div>
            </form>

         </div>
         <div class="panel-footer">지능형 빅데이터 서비스 개발자 과정(한글)</div>
      </div>
   </div>

</body>
</html>