import { useReducer } from 'react';
import styled from 'styled-components';

import { FlexContainer, Container } from 'Components/commons/base.js';
import Header from 'Components/Header/Header.js';
import Tabs from 'Components/Tabs/Tabs';
import DetailProductModal from 'Components/Modal/DetailProductModal';
import Button from 'Components/commons/Buttons';

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
      <FoooterSection>
        <Button type={"viewAll"}> 더보기</Button>
      </FoooterSection>
      {/* <MainDishSection>
        <MainDish />
      </MainDishSection> */}

    </MainPageLayout>
  )
}
const MainPageLayout = styled(FlexContainer)`
  max-width: 1440px;
  width: 100%;  
  /* margin-bottom: 100px; */
`;

const MainDishSection = styled(Container)`
`

const FoooterSection = styled.section`
  width: 100%;
  height: 100px;
`;


export default MainPage;