import Header from 'components/Nav/Header';
import Main from 'components/Main';
import 'reset.css';
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
  border: 1px solid red;
`;
