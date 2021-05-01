import { useState, useEffect } from 'react';
import axios from 'axios';

function Logout({ setLoginState }) {
	const token = localStorage.getItem('token');
	const handleClick = () => {
		localStorage.setItem('isLogin', false);
		localStorage.removeItem('userId');
		localStorage.removeItem('token');
		setLoginState(false);
	};

	useEffect(() => {
		const logOut = async () => {
			await axios.post('http://15.164.68.136:8080/logout', {
				headers: { Authorization: `Bearer ${token}` },
			});
		};
		logOut();
	});
	return <li onClick={handleClick}>로그아웃</li>;
}
export default Logout;
