//export 키워드로 내보낼 수 있는 모듈은 var. let. const, function, class이다
// 한 개의 파일에 여러 개의 모듈을 작성
const moduleA = 'moduleA';
function moduleB(msg){
    console.log('msg:'+ msg);
}
class moduleC{
    constructor() {
        console.log('module C');
    }
}
export {moduleA, moduleB, moduleC}