import { useState, useEffect } from 'react';
import axios from 'axios';

function useFetch(url) {
	const [data, setData] = useState([]);
	const [loading, setLoading] = useState(true);
	async function fetchUrl() {
		if (!url || url === undefined) return;
		try {
			const res = await axios.get(url);
			setData(res.data);
		} catch (error) {
			if (error.response.status === 400) {
				setData(400);
				console.error('요청주소에 문제가 있어요😯', error.response.status);
			}
		} finally {
			setLoading(false);
		}
	}
	useEffect(() => {
		fetchUrl();
		return () => {
			setData([]);
			setLoading(true);
		}; // eslint-disable-next-line
	}, [url]);

	return [data, loading];
}
export default useFetch;
