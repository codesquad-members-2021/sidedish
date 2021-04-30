import queryString from 'query-string';
import styled from 'styled-components';
import { useEffect, useState } from 'react';
import useFetch from './useFetch';
const Oauth = (props) => {
	const result = queryString.parse(props.location.search);
	const code = result.code;
	console.log(result);
	console.log(props);
	const [userInfo, loadingUserState] = useFetch(
		`http://15.164.68.136:8080/login?code=${code}`,
		'post',
		code,
	);

	if (!loadingUserState) {
		localStorage.setItem('isLogIn', 'true');
		localStorage.setItem('userId', userInfo.userId);
		localStorage.setItem('token', userInfo.token);
	}

	const [logOutPath, setLogOutUrl] = useState(null);
	const handleClick = () => {
		!loadingUserState && setLogOutUrl('http://15.164.68.136:8080/logout');
	};
	const [logout, loadingLogOutState] = useFetch(logOutPath, token);
	// useEffect(() => {
	// 	props.history.push('/');
	// });

	return (
		<>
			<Logout onClick={handleClick}>로그아웃</Logout>
		</>
	);
};
export default Oauth;

const Logout = styled.div``;
