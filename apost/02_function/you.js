function you(){
    const cnt = 10;
    function inner() {
        return cnt;
    }
    return inner;
}