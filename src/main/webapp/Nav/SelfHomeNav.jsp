<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@taglib prefix = "c"	 uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../CssLink/CssLink.jsp" flush="true" />

<!-- style here -->
<style>
	* { font-family: 'Spoqa Han Sans Neo', 'sans-serif'; }
#AcNav {
  width: 100%;
  position: relative;
  text-align: center;
  margin-top:15px;
  margin-bottom:100px;
}
#AcNav>a {
  display: block;
  font-size: 25px;
  font-weight: 900;
  position: absolute;
  left: 10%;
}

#AcNav>form {
	display:inline-block;
	top:50%;
}
#AcNav>form>input{
	width:240px;
	height:35px;
	border:1px solid #BEC3C9;
	border-radius: 7px;
	background-color:#EFEFEF;
}

/* width 가 1100이상일 때 */
@media(min-width :1000px){
	#AcNav>ul {
	  padding: 0 20px;
	  height: 30px;
	  color: #fff;
	  position: absolute;
	  transform: translateY(-20px);
	  right: 30px;
	  
	  display: inline-block;
	  list-style:none;
	  padding-left:0px;
	}
	#AcNav>ul li {
	  float: left;
	  line-height: 80px;
	  padding: 0 15px;
	}
	#AcNav .sideBar{
	display:none;
	}
}

/* width 가 1100이하로 내려가면 아이콘들 숨기게 하기 */
@media(max-width :1000px){
	#AcNav>ul>.n-sideBar{
		display:none;
	}
	#AcNav>ul>.sideBar {
	  padding: 0 20px;
	  height: 30px;
	  color: #fff;
	  position: absolute;
	  
	  right: 10%;
	  top:10px;
	  display: inline-block;
	  list-style:none;
	  padding-left:0px;
	}
	#AcNav>ul{
	margin-bottom:0px;
	}
}

</style>


<!-- html here -->
<nav id="AcNav">
    <a href="/sns/controller/goHome">StarGram</a>
 
    <form method="post" name="searchForm" action="/sns/controller/getSearch">
    	<input type="text" name="searchText" />
    </form>
    <ul >
<!--알림 -->
      <li class="n-sideBar"><a href="#"><i class="fa-regular fa-heart"></i></a></li>
<!--DM--> 
      <li class="n-sideBar"><a href="#"><i class="fa-solid fa-paper-plane"></i></a></li>
<!--글쓰기-->
      <li class="n-sideBar"><a href="/sns/Home/Write.jsp"><i class="fa-solid fa-pen"></i></a></li>
<!-- 홈으로 가기 -->
      <li class="n-sideBar"><a href="/sns/controller/goHome"><i class="fa-solid fa-house"></i></a></li>
<!-- 계정설정 -->
      <li class="n-sideBar"><a href="/sns/controller/SettingPage"><i class="fa-solid fa-gear"></i></a></li>
<!-- 로그아웃 -->
      <li class="n-sideBar"><a href="#" data-toggle="modal" data-target="#logout"><i class="fa-solid fa-arrow-right-from-bracket"></i></a></li>
<!--햄버거-->  
      <li class="sideBar"><a href="#"><i class="fa-solid fa-bars"></i></a></li>
    </ul>

  </nav>
  
 <!-- 모달창 -->
	<div class="modal" id="logout">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">로그아웃</h4>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<p>로그아웃 하시겠습니까?
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"onclick="location.href='/sns/controller/Logout'">로그아웃</button>
				</div>
			</div>
		</div>
	</div>