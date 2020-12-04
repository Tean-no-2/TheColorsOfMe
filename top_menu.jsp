<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Insert title here</title>
  <script src="https://kit.fontawesome.com/fac1f30643.js" crossorigin="anonymous"></script>  

<%-- <script src="<c:url value="../js/main.js" />"></script> --%>


<!-- <style type="text/css">
 	.nav-link-apple{
 	background: url('image/apple.svg') center no-repeat;
 	}
 	.nav-link-search{
 	 background: url('image/search.svg') center no-repeat;
}
.nav-link-bag{
 background: url('image/bag.svg') center no-repeat;
} 
.s earch-form::before{
    content: url('image/search.svg');
    }
 </style>  -->
</head>
 <link rel="stylesheet" href="../css/topNav.css">
<body>
 <header>
<!-- 상단 메뉴 부분 -->
<div class="container" >
<nav class="nav">
		<ul class="nav-list nav-list-mobile">
            <li class="nav-item">
              <div class="mobile-menu">
                <span class="line line-top"></span>
                <span class="line line-bottom"></span>
              </div>
            </li>
            <li class="nav-item">
           
              <a href="#" class="meun-item nav-link nav-link-apple"><img src="${root }image/apple.svg"></a>
            </li>
            <li class="nav-item">
              <a href="#" class="meun-item nav-link nav-link-bag nav-link-bag2"><img src="${root }image/bag.svg"></a>
            </li>
          </ul>
		<ul class="nav-list nav-list-larger">
		    <li class="nav-item nav-item-hiien">
		    <a class="nav-link nav-link-apple" href="${root }main"><img src="${root }image/apple.svg"></a>
			</li>
			<li id="hideSearch">
			<img src="${root }image/search.svg">
			<!-- 검색기능 -->
			<input type="text" placeholder="&#xF002;  apple.com 검색" style="font-family:Arial, FontAwesome" >
            </li>
            
            <c:forEach var="dto" items="${topMenuList }">
              <li class="nav-item">
                <a href="${root }board/main?board_info_idx=${dto.board_info_idx}" class="meun-item nav-link">${dto.board_info_name }</a>
              </li>
            </c:forEach> 
            
            <li class="nav-item">
            	<!-- 검색기능 -->
            	<a class="nav-link nav-link-search" id="search" href="#"><img src="${root }image/search.svg"></a>
            </li>
            <li class="nav-item nav-item-hidden">
            	<a class="nav-link nav-link-bag nav-link-bag1" href="#"><img src="${root }image/bag.svg"></a>
            </li>
            
            
            <c:choose>
            <c:when test="${empty sessionScope.user_id }">
            	<li>
            	<a href="${root }user/login" class="topBarBtn">로그인</a>
           		</li>
           	
           	</c:when>
           	<c:otherwise>
           		<li>
           			<p class="idfont">${sessionScope.user_id }님</p>
           			<a href="${root }user/logout.do" class="topBarBtn">로그아웃</a>
           		</li>
           	</c:otherwise>
           	</c:choose>
           	
            
            <div class="search-form">
              <form action="${root }search/searchList" method="get">
              	<!-- 검색기능 -->
                <input type="search" name="product_name" placeholder="과일과 색깔을 입력해주세요" />
              </form><!-- 
              <a class="close"><i class="fa fa-times"></i></a> -->
            </div>
           </ul>
           <ul id="hide2" class="hide2">
                <li id="hide2Blank"></li>
                <li id="hide2Bag"><i class="fas fa-shopping-bag"><img src="${root }image/bag.svg"></i><a href ="${root }cart/list.do">장바구니</a></li>
                <li><i class="far fa-heart"></i>즐겨찾기</li>
                <li><i class="fas fa-box"></i>주문</li>
                <li><i class="fas fa-cog"></i>계정</li>
                <li><i class="far fa-user-circle"></i>로그인</li>
              </ul>
	</nav>
		<div class="nav-link-bag__list">
          <div class="bagListContents">
            <ul id="hide" class="hide">
              <li id="hideBlank"></li>
              <li id="hideBag"><i class="fas fa-shopping-bag"></i><a href="${root }cart/list.do">장바구니</a></li>
              <li><i class="far fa-heart"></i>즐겨찾기</li>
              <li><i class="fas fa-box"></i>주문</li>
              <li><i class="fas fa-cog"></i>계정</li>
              <li><i class="far fa-user-circle"></i>로그인</li>
            </ul>
         </div>
       </div>  
  </div>
</header>

</body>
 <script src="${root }js/main.js"></script>
 <script
      src="https://code.jquery.com/jquery-3.5.1.js"
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
      crossorigin="anonymous">
 </script>
    <script type="text/javascript">
      $(document).ready(function () {
        $("#search").click(function () {
          $(".meun-item").addClass("hide-item");
          $(".search-form").addClass("can-see");
          $(".close").addClass("can-see");
        });
        $(".close").click(function () {
          $(".meun-item").removeClass("hide-item");
          $(".search-form").removeClass("can-see");
          $(".close").removeClass("can-see");
        });
      });
    </script>
</html>