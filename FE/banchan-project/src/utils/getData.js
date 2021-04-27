const getData = (url, setData, setError, options) => {
	try {
		fetch(url)
			.then((res) => res.json())
			.then((json) => {
				if (json) {
					setData(json);
					console.log(json.data.top_image)
					// options(json.data.top_image)
				}
			});
	} catch (err) {
		alert("에러가 발생했습니다");
		setError(true);
	}
};

export default getData