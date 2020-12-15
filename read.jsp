<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value='${pageContext.request.contextPath }/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미니 프로젝트</title>
<link rel="stylesheet" href="${root }css/read.css">
</head>
<body>
	
<c:import url="/WEB-INF/view/include/top_menu.jsp"/>

<div class="readcontainer" style="margin-top:100px">
	<div class="row">
		<div class="form">
		<div class="form1">
			<div class="card shadow">
				<div class="card-body">
					<div class="group">
						<label for="board_writer_name"><h3>작성자</h3></label>
						<input type="text" id="board_writer_name" name="board_writer_name" class="control" value="${readContentBean.content_writer_name }" disabled="disabled"/>
					</div>
					<div class="group">
						<label for="board_date"><h3>작성날짜</h3></label>
						<input type="text" id="board_date" name="board_date" class="control" value="${readContentBean.content_date }" disabled="disabled"/>
					</div>
					<div class="group">
						<label for="board_subject">제목</label>
						<input type="text" id="board_subject" name="board_subject" class="control" value="${readContentBean.content_subject }" disabled="disabled"/>
					</div>
					<div class="group">
						<label for="board_content">내용</label>
						<textarea id="board_content" name="board_content" class="control1" rows="10" style="resize:none" disabled="disabled">${readContentBean.content_text }</textarea>
					</div>
					<c:if test="${readContentBean.content_file != null }">
					<div class="group">
						<label for="board_file">첨부 이미지</label>
						<img src="${root }upload/${readContentBean.content_file}" width="100%"/>						
					</div>
					</c:if>
					<div class="group">
						<div class="text-right">
							<a href="${root }board/main2?board_info_idx=${board_info_idx}&page=${page}" class="btn btn-primary">목록보기</a>
							<c:if test="${loginUserBean.user_idx == readContentBean.content_writer_idx }">
							<a href="${root }board/modify?board_info_idx=${board_info_idx}&content_idx=${content_idx}&page=${page}" class="btn btn-info">수정하기</a>
							<a href="${root }board/delete?board_info_idx=${board_info_idx}&content_idx=${content_idx}" class="btn btn-danger">삭제하기</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	
		
	</div>
</div>


<c:import url="/WEB-INF/view/include/bottom_info.jsp"/>

</body>
</html>
    