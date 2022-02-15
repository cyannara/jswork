<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<STYLE>
 * { margin: 0; padding: 0; }
 #banner_wrap { position: relative; width: 500px; margin: 0 auto; }
 #prevBtn { position: absolute; left: 0; top: 10px; }
 #nextBtn { position: absolute; right: 0; top: 10px; }
</STYLE>
</head>
<body>


<SCRIPT>
 $( function () {
  var mySlider = $( '#slide_banner' ).bxSlider( {
   mode: 'horizontal',// 가로 방향 수평 슬라이드
   speed: 500,        // 이동 속도를 설정
   pager: false,      // 현재 위치 페이징 표시 여부 설정
   moveSlides: 3,     // 슬라이드 이동시 개수
   slideWidth: 100,   // 슬라이드 너비
   minSlides: 3,      // 최소 노출 개수
   maxSlides: 3,      // 최대 노출 개수
   slideMargin: 5,    // 슬라이드간의 간격
   auto: true,        // 자동 실행 여부
   autoHover: true,   // 마우스 호버시 정지 여부
   controls: true    // 이전 다음 버튼 노출 여부
  } );

    //이전 버튼을 클릭하면 이전 슬라이드로 전환
  $( '#prevBtn' ).on( 'click', function () {
   mySlider.goToPrevSlide();  //이전 슬라이드 배너로 이동
   return false;              //<a>에 링크 차단
  } );

    //다음 버튼을 클릭하면 다음 슬라이드로 전환
  $( '#nextBtn' ).on( 'click', function () {
   mySlider.goToNextSlide();  //다음 슬라이드 배너로 이동
   return false;
  } );

 
 } );
</SCRIPT>


<DIV id=banner_wrap>
<UL id=slide_banner>
 <LI>
  <A href="http://godlvkhj.tistory.com/admin/entry/post/?id=60&amp;returnURL=CLOSEME#">
   <IMG alt="" src="img/Chrysanthemum.jpg">
  </A>
 
 <LI>
  <A href="http://godlvkhj.tistory.com/admin/entry/post/?id=60&amp;returnURL=CLOSEME#">
   <IMG alt="" src="img/Desert.jpg"><br><div>ddd</div>
  </A>
 
 <LI>
  <A href="http://godlvkhj.tistory.com/admin/entry/post/?id=60&amp;returnURL=CLOSEME#">
   <IMG alt="" src="img/Hydrangeas.jpg"><br><div>aaa</div>
  </A>
 
 <LI>
  <A href="http://godlvkhj.tistory.com/admin/entry/post/?id=60&amp;returnURL=CLOSEME#">
   <IMG alt="" src="img/Jellyfish.jpg">
  </A>
 
 <LI>
  <A href="http://godlvkhj.tistory.com/admin/entry/post/?id=60&amp;returnURL=CLOSEME#">
   <IMG alt="" src="img/Penguins.jpg">
  </A>
             
</LI></UL>
</DIV>


</body>
</html>