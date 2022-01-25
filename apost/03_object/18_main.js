//모듈도 하나의 객체로서 임포트 시점에 모듈객체의 참조 주소를 변수에 할당

//1. default 키워드로 모듈 하나만 임포트
//import defaultModule from './18_module.js'

//2. 임포트할 모듈을 {}에 나열
//import {moduleA, moduleB, moduleC} from './18_module.js'
//console.log(moduleA)
//moduleB('module run~~');
//const modulec = new moduleC();

//3. 모든 모듈을 불러올 경우 반드시 새 모듈 이름을 지정
import * as myModule from './18_module.js'
console.log(myModule.moduleA)
myModule.moduleB('module run~~');
const modulec = new myModule.moduleC();