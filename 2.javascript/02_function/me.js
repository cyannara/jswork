function me(){
    const cnt = 20;
    function inner() {
        return cnt;
    }
    return inner; 
}