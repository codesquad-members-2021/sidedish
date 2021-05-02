import { useState, useEffect } from 'react';
import styled from 'styled-components';

import * as Carousel from 'Components/Carousel';
import Card from 'Components/commons/Cards';

import API from 'util/API.js';

const MainDish = ({ refetchModal }) => {
  const [mainDishes, setMainDishes] = useState();

  useEffect(() => {
    const fetchMainDish = async () => {
      setMainDishes(await API.get.main());
    }
    fetchMainDish();
  }, [])

  const carouselOption = {
    navigator: "default",
    unit: 4
  }

  if (!mainDishes)
    return <></>;

  return (
    <CarouselLayout>
      <Carousel.Container {...carouselOption}>
        {/* for test */}
        {mainDishes.map((dish, i) => {
          return <Card key={`test-${i}`} number={i} type={"responsive"} payload={dish} refetchModal={refetchModal} />;
        })}

      </Carousel.Container>
    </CarouselLayout>
  )
}

const CarouselLayout = styled.div``;

export default MainDish;