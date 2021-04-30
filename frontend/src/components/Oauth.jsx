import queryString from 'query-string';
import { useEffect } from 'react';
import useFetch from './useFetch';

const Oauth = (props) => {
	const result = queryString.parse(props.location.search);
	const code = result.code;
	const [userInfo, loadingUserState] = useFetch(
		`http://15.164.68.136:8080/login?code=${code}`,
		'post',
		code,
	);

	useEffect(() => {
		try {
			if (!loadingUserState) {
				localStorage.setItem('isLogin', 'true');
				localStorage.setItem('userId', userInfo.userId);
				localStorage.setItem('token', userInfo.token);
				props.history.push('/');
			}
		} catch (err) {
			console.error('요청주소에 문제가 있어요😯', err.response.status);
			props.history.push('/error');
		}
	});
	return null;
};
export default Oauth;
