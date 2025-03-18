//화살표 함수와 this 키워드
// 화살표 함수에서 this는 상위 스코프에서 상속된다.

const box = document.querySelector(".box");

/*
box.addEventListener("click", function(){
  //div에 opening 클래스를 토글
  this.classList.toggle("opening");
  setTimeout(function(){
    //클래스를 다시 토글
    this.classList.toggle("opening")   // this => window function()은 window
  },500)
})
*/

/*
box.addEventListener("click", function(){
  //div에 opening 클래스를 토글
  this.classList.toggle("opening");
  setTimeout(()=>{
    //클래스를 다시 토글
    this.classList.toggle("opening")   // this => box  화살표함수는 상위 스코프
  },500)
})
*/

box.addEventListener("click", ()=>{  
  //div에 opening 클래스를 토글
  this.classList.toggle("opening");   // 여기 this : 상위 스코프는 window
  setTimeout(()=>{
    //클래스를 다시 토글
    this.classList.toggle("opening")  
  },500)
})