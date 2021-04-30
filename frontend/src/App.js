import './App.css';
import Home from './components/Home';
import { Route, BrowserRouter } from 'react-router-dom';
import Oauth from './components/Oauth';
function App() {
	const loggedInfo = localStorage.getItem('isLogIn');
	const userId = localStorage.getItem('userId');
	console.log(loggedInfo);
	// eslint-disable-next-line no-unused-expressions

	return (
		<BrowserRouter>
			<div>
				<Route
					path="/"
					isLogin={loggedInfo || null}
					component={Home}
					exact={true}
				/>
				<Route path="/logIn" component={Oauth} />
			</div>
		</BrowserRouter>
	);
}

export default App;
