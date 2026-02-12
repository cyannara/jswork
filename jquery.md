# [jQuery](https://jquery.com/)

- JavaScript 라이브러리
- HTML 문서 탐색 및 조작, 이벤트 처리, 애니메이션, Ajax 등을 사용하기 쉬운 API 제공
- [jQuery 사용법](https://learn.jquery.com/using-jquery-core/)

CDN
```
<script src="https://code.jquery.com/jquery-4.0.0.js" integrity="sha256-9fsHeVnKBvqh3FB2HYu7g2xseAZ5MlN6Kz/qnkASV8U=" crossorigin="anonymous"></script>
```
## DOM api(Javascript 와 jQuery 비교)

|  분류          | Javascript                                    |  jquery                                            |
| :------------  | :---------------------------------------------- | :------------------------------------------------- |
| 요소선택       | document.getElementById("div")                  | $("#div")	                                        |
|                |         .getElementsByTagName("div")            | $("div")                                           |
|                |         .getElementsByName("div")               | $("[name='div']")                                  |
|                |         .getElementsByClassName("div")          | $(".div")                                          |
|                |         .querySelector("css slector")           |                                                    |
|                |         .querySelectorAll("css slector")        |                                                    |
| 요소 생성      | 변수 = document.createElement("option")         | $newTag = $("\<option\>")                          |  
| 요소 추가      | 부모태그.append( node or text ...)              | $부모.append($newTag)                             | 
|                |        .prepend(), .appendChild()              |      .prepend($newTag)                             | 
|                |        .insertAdjacentElement(position, element) |                                                  |
|                |        .insertAdjacentHTML(position, text)     |                                                   |
|                |        .insertAdjacentText(position, text)     |                                                   |
|                | 형제.after(), before()                         |  $형제.after(), before()                           |
| 요소 삭제      | 부모태그.removeChild(태그)                      |                                                    |
|                | 태그.remove()                                   | $태그.remove()                                     |
| 요소 내용 변경 | 태그.innerHTML = '수정할내용'                   | $태그.html("수정할내용")                           |
| 요소 속성 변경 | 태그.setAttribute('속성', '값')                 | $태그.attr('속성','값')                            |
|                | 태그.속성명 ='값'                               |      .prop('속성','값')                            |
|                | 태그.removeAttribute('속성')                    |                                                    |
| input 값       | 태그.value                                      | $태그.val()                                        |
| css 변경       | 태그.style.속성 = 'xxx'                         | $태그.css('속성','값')                             |
|                | 태그.style.display = 'none'   또는 'block'      |      .hide(),  show()                              |
| class 변경     | 태그.classList.add() / remove() / togger()      | $태그.addClass() / removeClass() / toggleClass()   |
|                |     .contains("클래스명")                       |      .hasClass("클래스명")                         |
|                |     .className = "클래스명"                     |      .attr("class", "클래스명")                    |
| data속성       | 태그.setAttribute("data-속성", "값")            | $태그.data("속성", "값")                           |
|                | 태그.dataset.속성 = "값"                        |                                                    |
| event 추가     | 태그.addEventListener("type", handler)          | $태그.bind(),    on(),  one()                      |
| event 삭제     | 태그.removeEventListener("type")                |      .unbind(),  off()                             |
| traverse-부모  | 태그.parentElement , closest()                  | $태그.parent(),   closest()                        |
|          자식  | childNodes, children, firstElementChild, lastElementChild |       children(),  first(),  last()                |
|                |                                                 |       find("css선택자")                            |
|          형제  | nextElementSibling, previousElementSibling      | $태그.prev(),  next()                              |
|                |                                                 |      .prevAll(), nextAll(),  siblings()            |
|          필터  |                                                 | eq(index), gt(), lt(), odd(), even()               |
| 반복문         | forEach()                                       | each()                                             |
| ajax           | XMLHttpRequest 객체                             |                                                    |
|                | fetch()                                         | $.ajax(),  $.post(),  $.get(),  $.getJson()        |
|                |                                                 | $("div").load(url)                                 |

## 확인문제

1. 두 수의 합 계산
```html
<body>
  <h1>계산기</h1>
  <input type="text" id="num1"> + 
  <input type="text" id="num2">
  <button type="button">계산</button>
  <div id="result" style="border:1px solid blue; height:50px"></div>
  <script>
    // 계산버튼 클릭 이벤트 핸들러 작성
    // 두수의 합을 div에 출력
  </script>
</body>  
```
2. 요소 추가
```html
<body>
  <h3 id="title">배열의 값 select 태그 초기화</h3>
  언어<select id="lang" name="lang" size="10">
      <!-- <option value="자바">자바</option> -->
    </select>	
  <script>
    let langarr = ["선택","자바","스프링","자바스크립트"];
    // 배열의 값으로 option 태그 생성해서 select 태그에 추가하기

  </script>
</body>
```

3. 입력받아서 요소 추가
```html
<body>
    <h3>좋아하는 과일 추가</h3>
    <input type="text" id="txt">
    <button id="btn" type="button">추가</button><br>
    <select  id="sel" style="width: 220px; margin-top: 5px;" size="10">
        <option value="사과">사과</option>
    </select>
    <script>
      // 추가 버튼 클릭 이벤트 핸들러
      // input 태그의 입력값으로 option 태그를 만들어서 select 태그에 추가
    </script>
</body>    
```

## [요소 선택](https://learn.jquery.com/using-jquery-core/selecting-elements/)


## dom 객체와 [jQuery 객체](https://learn.jquery.com/using-jquery-core/jquery-object/) 변환

$는 일반적으로 유틸리티 유형 메서드이며 선택 항목과 함께 작동하지 않습니다.  

```javascript
//dom 객체
var btn = document.getElementById("btn1");
btn.style.backgroundColor = 'red'

//jquery 객체
var $btn = $("#btn1");
$btn.css("backgroundColor","blue")

//dom => jquery   : $()로 감쌈
$(btn).css("backgroundColor","blue")

//jquery => dom   : get(0) 함수
$btn[0].style.backgroundColor = 'red'
$btn.get(0).style.backgroundColor = 'red'

$("div").eq(0)    // jquery
$("div")[0]       // dom
$("div").get(0)   // dom

//each 반복문 안에서 객체 타입
$("div").each(function(idx, item){   
  item            // dom 객체
  $(item)         // jQuery 객체
  $(this)         // jQuery 객체
})

//each 반복중단
$.each(arr, function(idx, item){
  return;         // continue
  return false;   // beak
})
```

## fetch 함수와 $.ajax() 함수 비교

### query string
-  "변수명=값&변수명=값"
-  form-urlencoded(생략가능)

```javascript

 // get 방식
 fetch(url + "?var=value").then();
 $.ajax(url + "?var=value").done();

// post,put 방식
   fetch(url, {method:'post', body: "fvar=value&svar=value" }).then()	
  $.ajax(url, {method:'post', data: "fvar=value&svar=value" }).done()
  $.ajax(url, {method:'post', data: {"fvar":"value", "svar":"value" }  }).done()
```

### json string 
- "{"필드명":"값"}"
- application/json 
- get 방식은 지원 안 함

<pre>  
       post,put		      fetch(url,{method:'post', 
                                         headers : { "content-type" : "application/json"},
                                         body:'{"var":"value"}' }).then()	
 
			      $.ajax(url,{method:'post', 
                                          contentType" : "application/json", 
                                           data:'{"var":"value"}' }).done()

                                           data:JSON.stringify({var:"value"})  }).done()

                               axios  :  default 가 json 형식

</pre>

### sync     VS  asynchronus (동기와 비동기 차이점)
<pre>
   blocking VS  nonblocking

  sync : 순차적으로
  async : 콜백함수     -->  async ~ await
  cors : ajax 같은 도메인에서만 요청 
</pre>
  
## AJAX 실습


1. to do
2. petShop
3. users
4. emp


## jQuery 위젯
1. DataTable
2. fullcalendar
3. chart
4. jqgrid