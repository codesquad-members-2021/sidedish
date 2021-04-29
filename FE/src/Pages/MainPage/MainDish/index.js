import { useState, useEffect } from 'react';
import styled from 'styled-components';

import * as Carousel from 'Components/Carousel';
import Card from 'Components/commons/Cards';

import API from 'util/API.js';

const MainDish = () => {
  const [mainDishes, setMainDishes] = useState();
  
  useEffect(() => {
    const fetchMainDish = async () => {
      setMainDishes(await API.get.main());
      console.log("fetchMainDish!", mainDishes)
    }
    fetchMainDish();
  }, [])

  const carouselOption = {
    navigator: "default",
    unit : 3
  }

  if (!mainDishes)
    return <></>;

  return (
    <CarouselLayout>
      <Carousel.Container {...carouselOption}>
        {/* for test */}
        {mainDishes.body.map((_, i) => {
          return <Card key={`test-${i}`} number={i} type={"responsive"} />;
        })}

      </Carousel.Container>
    </CarouselLayout>
  )
}

const CarouselLayout = styled.div``;

export default MainDish;
