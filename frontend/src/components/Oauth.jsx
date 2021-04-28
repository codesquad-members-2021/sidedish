import queryString from 'query-string';
import { useEffect } from 'react';
const Oauth = (props) => {
	const result = queryString.parse(props.location.search);
	console.log(result);
	console.log(props);
	//localhost:8080/login?code={result.code} put 요청
	useEffect(() => {
		props.history.push('/');
	});

	return (
		<>
			<h1>로그인 화면</h1>
		</>
	);
};
export default Oauth;
