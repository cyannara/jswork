const  moduleA = 'moduleA';
export function moduleB(msg){
    console.log('msg:'+ msg);
}
export class moduleC{
    constructor() {
        console.log('module C');
    }
}

export default  moduleA 
//export {moduleA, moduleB, moduleC}