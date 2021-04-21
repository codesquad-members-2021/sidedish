import Header from '../src/components/Header';
import Main from '../src/components/Main';
import './reset.css';
import styled from 'styled-components';

const App = () => {
  return (
    <AppContainer className="App">
      <Header />
      <Main />
    </AppContainer>
  );
};

export default App;

const AppContainer = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
`;
