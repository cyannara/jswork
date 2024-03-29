var validateType = function(img){
  return (['image/jpeg','image/jpg','image/png'].indexOf(img.type) > -1);
}

var validateName = function(fname){
  let extensions = ['jpeg','jpg','png'];
  let fparts = fname.split('.');
  let fext = '';

  if(fparts.length > 1){
      fext = fparts[fparts.length-1];
  }

  let validated = false;
  
  if(fext != ''){
      extensions.forEach(function(ext){
          if(ext == fext){
              validated = true;
          }
      });
  }

  return validated;
}


// 파일 선택 필드에 이벤트 리스너 등록
document.getElementById('imageSelector').addEventListener('change', function(e){
  let elem = e.target;
  if(validateType(elem.files[0])){
      let preview = document.querySelector('.thumb');
      preview.src = URL.createObjectURL(elem.files[0]); //파일 객체에서 이미지 데이터 가져옴.
      document.querySelector('.dellink').style.display = 'block'; // 이미지 삭제 링크 표시
      preview.onload = function() {
          URL.revokeObjectURL(preview.src); //URL 객체 해제
      }
  }else{
    console.log('이미지 파일이 아닙니다.');
  }
});

document.querySelector('.dellink').addEventListener('click', function(e){
  let dellink = e.target;
  let preview = dellink.previousElementSibling;
  preview.src = ''; // 썸네일 이미지 src 데이터 해제
  document.querySelector('.dellink').style.display = 'none';
});


var elem = document.getElementById('imageSelector'); //파일 선택 필드 요소 얻기

if(validateType(elem.files[0])){ // 파일 확장자 체크해서 이미지 파일이면
  let preview = document.querySelector('.thumb'); // 미리보기 썸네일 <img> 엘리먼트 얻기
  preview.src = URL.createObjectURL(elem.files[0]); //파일 객체에서 이미지 데이터 가져옴.
  document.querySelector('.dellink').style.display = 'block'; // 이미지 삭제 링크 표시
  //이미지 로딩 후 객체를 메모리에서 해제
  preview.onload = function() {
    URL.revokeObjectURL(preview.src);
  }
}else{
  console.log('이미지 파일이 아닙니다.');
}