let mypromise = new Promise((resolve, reject) => {
	setTimeout(()=>{
		let result = 'promise fulfilled';
		resolve(result);
	}, 1000);
});

mypromise.then((successMessage)=>{
	console.log(successMessage);
}).catch((failMessage)=>{
	console.log(failMessage);
});