const getData = (url, setDataFn, setErrorFn) => {
	try {
		fetch(url)
			.then((res) => res.json())
			.then((json) => {
				if (json) {
					setDataFn(json);
				}
			});
	} catch (err) {
		alert("에러가 발생했습니다");
		setErrorFn(true);
	}
};

export default getData