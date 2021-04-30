import './App.css';
import { useState, useEffect } from 'react';
import Home from './components/Home';
import { Route, BrowserRouter } from 'react-router-dom';
import Oauth from './components/Oauth';
function App() {
	const [loginState, setLoginState] = useState(false);
	useEffect(() => {
		const isLogin = localStorage.getItem('isLogin');
		console.log(isLogin);
		isLogin === true && setLoginState(true);
	}, []);

	// eslint-disable-next-line no-unused-expressions

	return (
		<BrowserRouter>
			<div>
				<Route
					path="/"
					isLogin={loginState}
					setLoginState={setLoginState}
					component={Home}
					exact={true}
				/>
				<Route path="/logIn" component={Oauth} />
			</div>
		</BrowserRouter>
	);
}

export default App;
