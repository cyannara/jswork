function asyncWork(value){
	return new Promise((resolve, reject)=>{
		setTimeout(()=>{
			value -= 20;
			if(value > 50 ) {
				resolve(value);
			} else {
				reject(value);
			}
		},1000);
	})
}

asyncWork(40)
  .then((value)=>{
	console.log(value);
	return asyncWork(value);
}).then((value)=>{
	console.log(value);
	return asyncWork(value);
}).catch((err)=>{
	console.log('catch:' + err);
})