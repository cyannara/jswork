/* 02_3_event_function_externa.html에서 사용*/
function innerHtml(str) {
    document.getElementById("demo").innerHTML = str;
}
function turnOn() {
    document.getElementById("myImg").src = "https://www.w3schools.com/js/pic_bulbon.gif";
}
function turnOff() {
    document.getElementById("myImg").src = "https://www.w3schools.com/js/pic_bulboff.gif";
}
function changeFont(fSize) {
    document.getElementById("demo").style.fontSize = fSize+"px";
}
function hide() {
    document.getElementById("demo").style.display = "none";
}
function show() {
    document.getElementById("demo").style.display = "block";
}