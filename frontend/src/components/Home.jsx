import MainMenu from './mainmenu/MainMenu';
import CategoryEntry from './category/CategoryEntry';
import Header from './header/Header';
import GlobalStyle from './style/GlobalStyle';

const Home = (isLogin) => {
	console.log(isLogin);
	return (
		<>
			<GlobalStyle />
			<Header isLogin={isLogin} />
			<MainMenu />
			<CategoryEntry />
		</>
	);
};

export default Home;
