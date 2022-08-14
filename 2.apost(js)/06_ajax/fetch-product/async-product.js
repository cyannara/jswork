var myList = document.querySelector('ul');

async function fetchProduct(){
	const response = await fetch('products.json');
	if (!response.ok) {
        throw new Error("HTTP error, status = " + response.status);
	}
	const json = await response.json();
	
	for(var i = 0; i < json.products.length; i++) {
		var listItem = document.createElement('li');
        listItem.innerHTML = '<strong>' + json.products[i].Name + '</strong>';
        listItem.innerHTML +=' can be found in ' + json.products[i].Location + '.';
        listItem.innerHTML +=' Cost: <strong>£' + json.products[i].Price + '</strong>';
        myList.appendChild(listItem);
	}
}


fetchProduct()
.catch(function(error) {
	var p = document.createElement('p');
	p.appendChild(
		document.createTextNode('Error: ' + error.message)
	);
	document.body.insertBefore(p, myList);
});
