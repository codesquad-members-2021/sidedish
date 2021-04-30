import { useState, useEffect } from 'react';
import styled from 'styled-components';

import * as Carousel from 'Components/Carousel';
import Card from 'Components/commons/Cards';

import API from 'util/API.js';

const SoupDish = ({ refetchModal }) => {
  const [soupDishes, setSoupDishes] = useState();

  useEffect(() => {
    const fetchSoupDish = async () => {
      setSoupDishes(await API.get.soup());
    }
    fetchSoupDish();
  }, [])

  const carouselOption = {
    navigator: "default",
    unit: 4
  }

  if (!soupDishes)
    return <></>;

  return (
    <CarouselLayout>
      <Carousel.Container {...carouselOption}>
        {/* for test */}
        {soupDishes.map((dish, i) => {
          return <Card key={`test-${i}`} number={i} type={"responsive"} payload={dish} refetchModal={refetchModal} />;
        })}

      </Carousel.Container>
    </CarouselLayout>
  )
}

const CarouselLayout = styled.div``;

export default SoupDish;