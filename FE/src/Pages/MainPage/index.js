import { useState } from 'react';
import styled from 'styled-components';

import { FlexContainer, Container } from 'Components/commons/base.js';
import Header from 'Components/Header/Header.js';
import Tabs from 'Components/Tabs/Tabs';
import DetailProductModal from 'Components/Modal/DetailProductModal';
import Button from 'Components/commons/Buttons';

import * as Dish from 'Pages/MainPage/Dish';
// import Dish from 'Pages/MainPage/Dish';

import useAsync from 'util/hooks/useAsync';
import API from 'util/API';

const MainPage = () => {
  const [modalState, refetchModal] = useAsync(API.get.detail, [], true);
  const [hasMoreCategory, setHasMoreCategory] = useState(true);

  return (
    <MainPageLayout>
      <Header />
      <Tabs  {...{ refetchModal }} />
      <DishSection>
        {/* <Dish type={"main"}/> */}
        <Dish.Main refetchModal={refetchModal}/>
      </DishSection>
      { !hasMoreCategory 
        ? <>
            <DishSection>
              <Dish.Side refetchModal={refetchModal} />
              {/* <Dish type={"side"}/> */}
            </DishSection>
            <DishSection>
              <Dish.Soup refetchModal={refetchModal} />
              {/* <Dish type={"soup"}/> */}
            </DishSection>
          </>
        : <FoooterSection> 
            <Button type={"viewAll"} onClick={setHasMoreCategory}> 더보기 </Button>
          </FoooterSection> 
      }
      
      <DetailProductModal {...{ modalState, refetchModal }} />
    </MainPageLayout>
  )
}
const MainPageLayout = styled(FlexContainer)`
  max-width: 1440px;
  width: 100%;  
  /* margin-bottom: 100px; */
`;

const DishSection = styled(Container)`
`

const FoooterSection = styled.section`
  width: 100%;
  height: 100px;
`;


export default MainPage;