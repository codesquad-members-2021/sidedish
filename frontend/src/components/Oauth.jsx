import queryString from 'query-string';
import { useEffect } from 'react';
import useFetch from './useFetch';
const Oauth = (props) => {
	const result = queryString.parse(props.location.search);
	const code = result.code;
	console.log(result);
	console.log(props);
	useFetch(`localhost:8080/login?code=${code}`, 'post', code);
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
