import './App.css';
<<<<<<< HEAD
import Home from './components/Home';
import { Route, BrowserRouter } from 'react-router-dom';
import Oauth from './components/Oauth';
import Error from './components/state/Error';

function App() {
	return (
		<BrowserRouter>
			<div>
				<Route path="/" component={Home} exact={true} />
				<Route path="/logIn" component={Oauth} />
				<Route path="/error" component={Error} />
			</div>
		</BrowserRouter>
=======
import MainMenu from './components/mainmenu/MainMenu';
import Category from './components/category/Category';
import Header from './components/header/Header';
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

function App() {
	return (
		<>
			<GlobalStyle />
			<Header />
			<MainMenu />
			<Category />
		</>
>>>>>>> jangbagoony
	);
}

export default App;
