import { useState, useEffect } from 'react';
import styled from 'styled-components';

import * as Carousel from 'Components/Carousel';
import Card from 'Components/commons/Cards';

import API from 'util/API.js';

const SideDish = ({ refetchModal }) => {
  const [sideDishes, setSideDishes] = useState();

  useEffect(() => {
    const fetchSideDish = async () => {
      setSideDishes(await API.get.side());
    }
    fetchSideDish();
  }, [])

  const carouselOption = {
    navigator: "default",
    unit: 4
  }

  if (!sideDishes)
    return <></>;

  return (
    <CarouselLayout>
      <Carousel.Container {...carouselOption}>
        {/* for test */}
        {sideDishes.map((dish, i) => {
          return <Card key={`test-${i}`} number={i} type={"responsive"} payload={dish} refetchModal={refetchModal} />;
        })}

      </Carousel.Container>
    </CarouselLayout>
  )
}

const CarouselLayout = styled.div``;

export default SideDish;