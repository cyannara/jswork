document.addEventListener('DOMContentLoaded', function(){
  //새 HTML 도큐먼트 객체 생성
  let newdoc = document.implementation.createHTMLDocument('Html document');

  //div 태그 안에 내용을 만들어 넣음.
  let div = newdoc.createElement('div')
  div.innerHTML = "<span>HTML 문서 샘플</span>"
  
  //도큐먼트 바디에 자식을 붙임
  newdoc.body.appendChild(div)

  //HTML을 붙여넣을 아이프레임 참조 얻기
  targetdoc = document.getElementById("newFrame").contentDocument

  //붙여넣을 새 노드를 복사해옴
  let newnode = targetdoc.importNode(newdoc.documentElement, true);

  //아이프레임 도큐먼트를 새 노드로 대체
  targetdoc.replaceChild(newnode, targetdoc.documentElement);
})