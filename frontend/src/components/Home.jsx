import MainMenu from './mainmenu/MainMenu';
import CategoryEntry from './category/CategoryEntry';
import Header from './header/Header';
import GlobalStyle from './style/GlobalStyle';
import { useState, useEffect } from 'react';
import axios from 'axios';
const Home = () => {
	const [loginState, setLoginState] = useState(null);
	const [userName, setUserName] = useState(null);
	const [userIMG, setUserIMG] = useState(null);
	useEffect(() => {
		const token = localStorage.getItem('token');
		token !== null && setLoginState(true);

		const getUserInfo = async () => {
			const { data } = await axios.get('https://api.github.com/user', {
				headers: {
					Authorization: `token ${token}`,
				},
			});
			setUserName(data.name);
			setUserIMG(data.avatar_url);
		};
		getUserInfo();
	}, []);

	return (
		<>
			<GlobalStyle />
			<Header {...{ loginState, setLoginState, userName, userIMG }} />
			<MainMenu />
			<CategoryEntry />
		</>
	);
};

export default Home;
