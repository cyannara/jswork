	function Button(elementId) {
		this.element = document.getElementById(elementId);
		this.element.style.border = '1px solid blue';		
		var btn = this;  //Button 클래스
		var overFunc = function() {
			btn.doMouseOver.apply(btn, arguments);
		}
		var outFunc = function() {
			btn.doMouseOut.apply(btn, arguments);
		}		
		this.element.addEventListener("mouseover", overFunc );
		this.element.addEventListener("mouseout", outFunc  );
	}	
	Button.prototype = {
		doMouseOver: function(e) {
			console.log(this);  
			//이벤트 핸들러로 호출(실행)된 경우 
			//this 자신 클래스가 아니고 이벤트타겟을 가리킴 
			this.element.style.background = '#999'; 		
			//this.style.background = '#999';
			},
		doMouseOut: function(e) {
			this.element.style.background = '#fff'; 		
			//this.style.background = '#fff';
			}
	}