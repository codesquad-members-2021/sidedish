import React from 'react'

import styled from 'styled-components';
import Header from '../Components/Header/Header';
import Tabs from '../Components/Tabs/Tabs';
import { FlexContainer, Container } from '../Components/commons/styledComponents';
import * as Carousel from '../Components/Carousel';

const MainPage = () => {
  return (
    <MainPageLayout>
      <Header />
      <Tabs />
      메인페이지입니다.
      <CarouselLayout>
        <Carousel.Container type={"default"}>
          <Carousel.Item> <Card /> </Carousel.Item>
          <Carousel.Item> <Card /> </Carousel.Item>
          <Carousel.Item> <Card /> </Carousel.Item>
          <Carousel.Item> <Card /> </Carousel.Item>
          <Carousel.Item> <Card /> </Carousel.Item>
          <Carousel.Item> <Card /> </Carousel.Item>
          <Carousel.Item> <Card /> </Carousel.Item>
          <Carousel.Item> <Card /> </Carousel.Item>
        </Carousel.Container>
      </CarouselLayout>
      
    </MainPageLayout>
  )
}
const MainPageLayout = styled(FlexContainer)`
  max-width: 1440px;
  width: 100%;  
`;

const CarouselLayout = styled(Container)`

`

const Mocking = styled.div`
  min-width: 200px;
  height: 200px;
  background-color: blue;
`
const Card = styled(Mocking)`

`

export default MainPage;
