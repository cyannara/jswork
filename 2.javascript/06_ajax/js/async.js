function asyncWork(value) {
	return new Promise((resolve, reject) => {
		setTimeout(() => {
			value -= 20;
			if (value > 50) {
				resolve(value);
			} else {
				reject(value);
			}
		}, 1000);
	});
};

let asyncFunc = async function() {
	try {
		let res = await asyncWork(100);
		console.log('resolve1:' + res);
		
		res = await asyncWork(res);
		console.log('resolve2:' + res);
		
		res = await asyncWork(res);
		console.log('resolve3:' + res);

	} catch (err) {
		console.log('catch:', err);
	}
};

asyncFunc();