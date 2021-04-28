import { useReducer, useState } from 'react';
import styled from 'styled-components';
import { FlexContainer, Container } from 'Components/commons/base.js';
import Header from 'Components/Header/Header.js';
import Tabs from 'Components/Tabs/Tabs';
import DetailProductModal from 'Components/Modal/DetailProductModal';
import MainDish from 'Pages/MainPage/MainDish';
import { reducer, reducerInitialState } from 'util/reducer';

const MainPage = () => {
  const [modalState, dispatchModal] = useReducer(reducer, reducerInitialState);

  return (
    <MainPageLayout>
      <DetailProductModal {...{ modalState }} />
      <Header />
      <Tabs  {...{ dispatchModal }} />
      <MainDishSection>
        <MainDish />
      </MainDishSection>
      <MainDishSection>
        <MainDish />
      </MainDishSection>

    </MainPageLayout>
  )
}
const MainPageLayout = styled(FlexContainer)`
  max-width: 1440px;
  width: 100%;  
`;

const MainDishSection = styled(Container)`
`

export default MainPage;