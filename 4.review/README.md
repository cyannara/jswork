



1. value, innerHTML, document.querySelector(), Number() 를 이용하여 문제 풀기

- calc.html
  ```html
    <h1>계산기</h1>
    <input type="text" id="num1">
    <input type="text" id="num2">
    <button type="button" id="btnCalc" onclick="calc()">계산</button>
    <div id="result" style="border:1px solid blue; height:50px"></div>
    <script>
      //두 입력값의 합을 계산해서 div.result 에 출력
      function calc(){
          // to do
      }
    </script>
  ```
  ```html
    <script>
      //두 입력값의 합을 계산해서 div.result 에 출력
      function calc(){
        let n1 = document.querySelector("#num1").value;  //string
        let n2 = document.querySelector("#num2").value;
        
        let total = Number(n1) + Number(n2)              //parseInt <= "20px"
        document.querySelector("#result").innerHTML = total;
      }
    </script>
  ```

- append.html
  ```html
      <input id="fruit">
    <button id="btn">추가</button>
    <select id="list"></select>
    <script>
        btn.addEventListener("click", function(){
            //input 태그의 입력값을 가지고 option태그를 만들어서 추가
            list.insertAdjacentHTML("afterbegin", `<option>${fruit.value}</option>`)
            //input태그 클리어
            fruit.value = "";
        })
        fruit.addEventListener("keypress", function(){
            console.log(window.event.keyCode)
            if(window.event.keyCode == 13) {
                btn.click();
            }
        })

        window.addEventListener("keydown", function(){
            console.log(window.event.keyCode)
        })
    </script>
  ```

- classTest.html
  ```html
      <div class="active">사과</div>
    <div>바나나</div>
    <div>키위</div>
    <button id="btnSelect">선택한 과일은?</button>
    <script>

      document.body.addEventListener("click", ()=>{
        if( event.target.tagName  == "DIV" ){
          event.target.classList.toggle("active");
        }
      });

      btnSelect.addEventListener("click", function(){
        //event.stopPropagation();
        //class="active" 인 태그들 찾고
        var fruits = document.getElementsByClassName("active");
        
        //반복문
        for(i=0; i<fruits.length; i++) {
          //선택된 태그들의 내용을 콘솔창에 출력
          console.log(fruits[i].innerHTML);
        }

      })
    </script>
  ```
- dataTest.html
  ```html
    <div class="prod" data-pno="p100" data-price="1000">
      <span class="pname">상품1</span> <span>상세정보</span>
  </div>
  <div class="prod" data-pno="p101" data-price="10">
      <span class="pname">상품2</span> <span>상세정보</span>
  </div>
  <div class="prod" data-pno="p102" data-price="20">
      <span class="pname">상품3</span> <span>상세정보</span>
  </div>
  <script>
    document.body.addEventListener("click", function(){
      if(event.target.classList.contains("pname")) {
        alert(event.target.parentElement.dataset.pno);
      }
    })
  </script>
  ```
- debuggerTest.html
  ```html
  ```
- traverseTest.html
  ```html
    <h1>디버깅테스트</h1>
  <button id="btn">합계계산</button>
  <script>
    btn.addEventListener("click", calc);

    function calc() {
      let result = 0;
      result = sum1to10();
      console.log(result);
    }

    function sum1to10(){
      let total = 0;
      for(let i=1; i<=10; i++){
        total += i;
      }
      return total;
    }
  </script>
  ```
- movie.html
  ```html
    <style>
    div {border : 1px solid greenyellow;
         margin: 20px;}
    .
  </style>
    <div id="box">
    <div id="apple">apple</div>
    <div id="banana">banana</div>
    <div id="kiwi">kiwi</div>
  </div>
  <div id="sel">선택</div>
  ```
- toastGrid.html
  ```html
  ```
