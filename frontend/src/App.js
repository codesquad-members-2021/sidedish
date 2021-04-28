import './App.css';
import Home from './components/Home';
import { Route } from 'react-router-dom';
function App() {
	return (
		<div>
			<Route path="/" component={Home} exact={true} />
		</div>
	);
}

export default App;
