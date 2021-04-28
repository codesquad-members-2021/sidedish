import MainMenu from './mainmenu/MainMenu';
import CategoryEntry from './category/CategoryEntry';
import Header from './header/Header';
import GlobalStyle from './style/GlobalStyle';

const Home = () => {
	return (
		<>
			<GlobalStyle />
			<Header />
			<MainMenu />
			<CategoryEntry />
		</>
	);
};

export default Home;
