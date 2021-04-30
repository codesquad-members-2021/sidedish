import MainMenu from './mainmenu/MainMenu';
import CategoryEntry from './category/CategoryEntry';
import Header from './header/Header';
import GlobalStyle from './style/GlobalStyle';
import { useState, useEffect } from 'react';
const Home = () => {
	const [loginState, setLoginState] = useState(null);
	useEffect(() => {
		const token = localStorage.getItem('token');
		token !== null && setLoginState(true);
	}, []);

	return (
		<>
			<GlobalStyle />
			<Header {...{ loginState, setLoginState }} />
			<MainMenu />
			<CategoryEntry />
		</>
	);
};

export default Home;
