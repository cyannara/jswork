```javascript
document.getElementsByClassName("active")
//HTMLCollection [div.active]
document.getElementsByClassName("active").forEach()  X


document.querySelectorAll(".active")
//NodeList [div.active]
document.querySelectorAll(".active").forEach()   O
document.querySelectorAll(".active").map()       X

Array.from( document.getElementsByClassName("active") )
//(2) [div.active, div.active]

Array.from( document.getElementsByClassName("active") ).map(ele=>ele.innerHTML)
//(2) ['사과', '바나나']
```
