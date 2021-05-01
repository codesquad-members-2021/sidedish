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
	);
}

export default App;
