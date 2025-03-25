목차
===========================
1. ajax -> jQuery 함수 : $.ajax, $.get()..  $().load
2. 위젯 :  API문서 보는 방법
     - jQuery UI(위젯),

     - 부트스트랩
     - toast ui  :  grid
     - datatable
     - fullcalendar
     - 이미지 슬라이더

==========================
1. get/post/put/delete
조회  등록/수정
http://url?v=v&v=v    head 
                      body : v=v&v=v



2. rest 서버 (restful)                   기존의 URL요청
   post   http://url/Board    c         http://url/insertBoard
   get    http://url/Board/1  r         selectBoard
   put    http://url/Board    u
   delete http://url/Board/1  d         http://url/deleteBoard?id=1

fake rest server
https://jsonplaceholder.typicode.com/


3. ajax함수 
   ->  js fetch함수 -> jQuery $.ajax  -> axios

3-1 fetch
  참고사이트  : https://developer.mozilla.org/ko/docs/Web/API/Fetch_API/Using_Fetch

  옵션 : method, headers, body



3-2 jquery 의  ajax 함수
  참고사이트 : https://jquery.com/
   - $.ajax
   - $('선택자').load(url);


client(브라우저)			data		server(자바 서블릿)
---------------------------      ---->        -----------------------------
                             contentType
form data

--------------------------------------------------------------------------------------------
query string
     "변수명=값&변수명=값"          form-urlencoded(생략가능)

	 get		     fetch(url + "?var=value").then()	
                             $.ajax(url + "?var=value").done()

         post,put            fetch(url,{method:'post', body:"var=value&aaa=bbb" }).then()	
         		     $.ajax(url,{method:'post', data:"var=value" }).done()
                             $.ajax(url,{method:'post', data:{"var":"value" }  }).done()

--------------------------------------------------------------------------------------------
json string                   application/json 
     "{"필드명":"값"}"
       get (X)			
       post,put		      fetch(url,{method:'post', 
                                         headers : { "content-type" : "application/json"},
                                         body:'{"var":"value"}' }).then()	
 
			      $.ajax(url,{method:'post', 
                                          contentType" : "application/json", 
                                           data:'{"var":"value"}' }).done()

                                           data:JSON.stringify({var:"value"})  }).done()

                               axios  :  default 가 json 형식


 



