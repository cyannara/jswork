App = {

  init: async function() {
    // Load pets.
    fetch('./petSelect')
    .then(response => response.json())
    .then(this.makeList)
    .then(()=>{
		this.bindEvents();
		this.markAdopted();
     })
  },

  makeList : function(data) {
      var petsRow = $('#petsRow');
      var petTemplate = $('#petTemplate');

      for (i = 0; i < data.length; i ++) {
        petTemplate.find('.panel-title').text(data[i].name);
        petTemplate.find('img').attr('src',  data[i].picture);
        petTemplate.find('.pet-breed').text(data[i].breed);
        petTemplate.find('.pet-age').text(data[i].age);
        petTemplate.find('.pet-location').text(data[i].location);
        petTemplate.find('.btn-adopt').data('id', data[i].id);

        petsRow.append(petTemplate.html());
      }
    },

  bindEvents: function() {
    $(document).on('click', '.btn-adopt', App.handleAdopt);
  },

  markAdopted: function(adopters, account) {
    //분양이 된 pet의 버튼을 비활성화 시킴
    //fetch 결과 [{id:1,price:100},{id:3,price:200}]
	fetch('./adoptSelect')
    .then(response => response.json())
    .then(data=>{
		for (i = 0; i < data.length; i++) {
			$('.panel-pet').eq(result[i].id)      //id에 해당하는 pet검색 
		                 .find('button')          //버튼 태그 검색
		                 .text('Success')         //버튼의 태그내용 변경
		                 .attr('disabled', true); //버튼 비활성화 
		}
	})
  },

  handleAdopt: function(event) {
    event.preventDefault();

    var petId = parseInt($(event.target).data('id'));
    var amount = prompt("보내실 금액을입력해주세요");
  }
};

$(function() {
    App.init();
});
