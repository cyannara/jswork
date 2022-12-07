fetch('https://jsonplaceholder.typicode.com/posts11/1')
  .then(response => {
	console.log(response.status);
	return response.json();})
  .then(json => {
	var result = document.getElementById("result");
	result.innerHTML = JSON.stringify(json);
   })
   .catch(err => console.log(err));