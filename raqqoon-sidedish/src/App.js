import Header from 'components/Header';
import Main from 'components/Main';
import './reset.css';
import styled from 'styled-components';
import Detail from 'components/detail/Detail';
import { useState } from 'react';
import { NONE } from './const';

const App = () => {
  const [modalState, setModalState] = useState(NONE);

  return (
    <AppContainer className="App">
      <Header />
      <Main {...{ setModalState }} />
      <Detail {...{ modalState, setModalState }} />
    </AppContainer>
  );
};

export default App;

const AppContainer = styled.div`
  width: 1440px;
  margin: 0 auto;
`;
