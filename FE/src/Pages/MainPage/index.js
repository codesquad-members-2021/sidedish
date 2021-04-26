import styled from 'styled-components';

import { FlexContainer, Container } from '../../Components/commons/base.js';
import Header from '../../Components/Header/Header.js';

import Tabs from '../../Components/Tabs/Tabs';
import DetailProductModal from '../../Components/Modal/DetailProductModal';

import MainDish from './MainDish';
import { useState } from 'react';

const MainPage = () => {
  const [isHide, setHide] = useState(true);
  const [modalItems, setModalItems] = useState(null);

  const handleToggleModal = (item) => async () => {
    setHide(!isHide);
    if (!item) return;
    const responseData = await (await fetch(`/develop/baminchan/detail/${item.hash}`)).json();
    setModalItems(responseData.data);
  };

  return (
    <MainPageLayout>
      <DetailProductModal {...{ isHide, handleToggleModal, modalItems }} />
      <Header />
      <Tabs handleToggleModal={handleToggleModal} />
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