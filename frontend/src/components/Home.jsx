import MainMenu from './mainmenu/MainMenu';
import CategoryEntry from './category/CategoryEntry';
import Header from './header/Header';
import { createGlobalStyle } from 'styled-components';

const GlobalStyle = createGlobalStyle`
body{
  width: 1440px;
  font-family: Noto Sans KR;
  margin: 0 auto;
}
button{
  border: none;
  background-color: transparent;
  &:focus {
    outline: none;
  }
  cursor: pointer;
}
ul{
  padding: 0;
}
li{
  list-style: none;
  }
`;

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
