import queryString from 'query-string';
import styled from 'styled-components';
import { useEffect, useState } from 'react';
import { Redirect, Route } from 'react-router-dom';
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
		localStorage.setItem('isLogIn', 'true');
		localStorage.setItem('userId', JSON.stringfy(userInfo.userId));
		localStorage.setItem('token', JSON.stringfy(userInfo.token));
	});

	return (
		<Route>
			<Redirect
				to={{
					pathname: '/',
					state: { code },
				}}
			/>
		</Route>
	);
};
export default Oauth;
