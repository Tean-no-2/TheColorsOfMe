<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!-- 절대 경로 설정 -->
<c:set var="root" value="${pageContext.request.contextPath }/" />
<%-- <c:url var="root" value="/" /> --%>
 
<!-- 상단 메뉴 부분 -->
<nav id="nav" class="topNav">
<div class="topBar" >
		<ul class="topBarList" id="navMenu">
		    <li>
		    <a class="topBarBtn" href="${root }main"><i class="fab fa-apple"></i></a>
			<button class="topBarBtn" type="button" data-toggle="collapse" data-target="#navMenu">    
			</button>
			</li>
            <c:forEach var="dto" items="${topMenuList }">
              <li>
                <a href="${root }board/main?board_info_idx=${dto.board_info_idx}" class="topBarBtn">${dto.board_info_name }</a>
              </li>
            </c:forEach>
            <li>
            	<a class="topBarBtn" href="${root} user/search"><i class="fas fa-search"></i></a>
            </li>
            <li>
            	<a class="topBarBtn" href="${root} user/store"><i class="fas fa-shopping-bag"></i></a>
            </li>
            <li>
            	<a href="${root }user/login" class="topBarBtn">로그인</a>
           	</li>
		</ul>
		
		<ul id="toggle" class="hide">
			<li class="topBarBtn">
				<a href="${root }user/login" class="nav-link">로그인</a>
			</li>
			<li class="topBarBtn">
				<a href="${root }user/join" class="nav-link">회원가입</a>
			</li>
			<li class="topBarBtn">
				<a href="${root }user/modify" class="nav-link">정보수정</a>
			</li>
			<li class="topBarBtn">
				<a href="${root }user/logout" class="nav-link">로그아웃</a>
			</li>
		</ul>
		
		<ul class="topBarListPhone">
        <li><button class="topBarBtn"><i class="fas fa-bars"></i></button></li>
        <ul class="hide">
          <li><input type="text" placeholder=" apple.com 검색"><a><i class="fas fa-search"></i></a></li>
          <c:forEach var="dto" items="${topMenuList }">
              <li>
                <a href="${root }board/main?board_info_idx=${dto.board_info_idx}" class="topBarBtn">${dto.board_info_name }</a>
              </li>
            </c:forEach>
        </ul>
        <li><button class="topBarBtn"><i class="fab fa-apple"></i></button></li>
        <li><button class="topBarBtn"><i class="fas fa-shopping-bag"></i></button></li>
        <ul id="toggle" class="hide">
          <li><i class="fas fa-shopping-bag"></i> 장바구니</li>
          <li><i class="far fa-heart"></i>즐겨찾기</li>
          <li><i class="fas fa-box"></i>주문</li>
          <li><i class="fas fa-cog"></i>계정</li>
          <li><i class="far fa-user-circle"></i>로그인</li>
        </ul>
      </ul>
	</div>
	</div>
</nav>






