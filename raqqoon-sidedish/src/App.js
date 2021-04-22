import Header from 'components/Header';
import Main from 'components/Main';
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
  width: 1440px;
  margin: 0 auto;
`;
