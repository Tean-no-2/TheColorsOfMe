<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Insert title here</title>
   <script>

    let q_num=1;
    let layer;
    let score=Number();
    let num=1;
    let color;
    function show_question(){
        if(q_num<=5){
            
        layer = eval("document.all.question"+q_num);
        layer.style.display="inline";
        // hide_question();
        }
        else{
        	   if(score <= 6){
                   color="빨간색";
               }else if(score <= 8){
                   color="초록색"
               }else if(score <= 26){
                   color="노랑색"
               }else if(score <= 40){
                   color="보라색"
               }else{
                   color="흰색"
               }
          document.all.quizScore.innerHTML="당신은" +color+"입니다.";
           document.all.quizScore.style.display="inline";
        }
    }
    function check_answer1(){
        
        score += Number(document.getElementById("as"+num).value) ;
        num++;
        console.log(score);
        layer.style.display="none";
         q_num++;
         show_question();
    }
    function check_answer2(){
        
        score += Number(document.getElementById("ad"+num).value) ;
        num++;
        console.log(score);
        layer.style.display="none";
         q_num++;
         show_question();
    }

window.onload=show_question;
    </script>
</head>
<body>
     
    <div id="question1" style="display:none">
        <b>1. 블루비 운영진과 닮은 연예인은 ?</b><br>
        <button id="as1" onclick="check_answer1()" value=1>예</button>
        <button id="ad1" onclick="check_answer2()" value=2>아니요</button>
       <!--  <a class="as" href= "javascript:void(0)" onclick="check_answer()" value=2>예</a><br>
        <a class="as" href="javascript:void(0)" onclick="check_answer()" value=1>아니요</a><br> -->
        
    </div>
    
    <div id="question2" style="display:none">
    <b>2. 다음중 광역시가 아닌곳은?</b><br>
    <button id="as2" onclick="check_answer1()" value=3>예</button>
    <button id="ad2" onclick="check_answer2()" value=4>아니요</button>
    
    </div>
    
    <div id="question3" style="display:none">
    <b>3. 블루비 도메인이 아닌것은?</b><br>
    <button  id="as3" onclick="check_answer1()" value=2>예</button>
    <button  id="ad3" onclick="check_answer2()" value=3>아니요</button>
    
    </div>
    
    <div id="question4" style="display:none">
    <b>4. 블루비에서 제공하는 포인트 이름은 ?</b><br>
    <button id="as4" onclick="check_answer1()" value=4>예</button>
    <button id="ad4" onclick="check_answer2()" value=5>아니요</button>
    </div>
    
    <div id="question5" style="display:none">
    <b>5. 블루비를 설명한 것 중 맞는것은?</b><br>
    <button id="as5" onclick="check_answer1()" value=4>예</button>
    <button id="ad5" onclick="check_answer2()" value=3>아니요</button>
    </div>
    
    <div id="quizScore" style="display:none">

    </div>
</body>
</html>