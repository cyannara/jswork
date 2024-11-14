// 필드와 메서드
let basket = {
	changePNum : function(){		
		let element = event.target;		
		let cntTxt = element.closest(".updown").querySelector(".p_num")
		//taret에 클래스 up이 있으면 
		if (element.classList.contains("up")) {
			// 부모안에 input 태그의 value 값을 1증가
			cntTxt.value = Number(cntTxt.value) + 1
		} else if (element.classList.contains("down")) {
		   // 부모안에 input 태그의 value 값을 1감소
			 if(cntTxt.value > 0) {
			 	cntTxt.value = Number(cntTxt.value) - 1
			 }
		}
		//금액계산

		this.reCalc();
	},
	//합계계산
	reCalc: function(){	
		let total = 0;
		//수량, 금액 합계 계산
		checkboxes = document.querySelectorAll('[name="buy"]:checked')
		for()
		//전체합계 자리에 출력

	},
  delItem : function(){
		//fetch()
		event.target.closest(".row").remove();
		this.reCalc();
	}
	//삭제 버튼, remove()
	//선택삭제 버튼 .row

}
