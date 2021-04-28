import './App.css';
import Home from './components/Home';
import { Route, BrowserRouter } from 'react-router-dom';
import Oauth from './components/Oauth';
function App() {
	return (
		<BrowserRouter>
			<div>
				<Route path="/" component={Home} exact={true} />
				<Route path="/logIn" component={Oauth} />
			</div>
		</BrowserRouter>
	);
}

export default App;
