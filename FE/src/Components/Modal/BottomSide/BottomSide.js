import { useState, useEffect } from 'react';
import styled from 'styled-components';

import * as Carousel from 'Components/Carousel';
import Card from 'Components/commons/Cards';

import API from 'util/API';

const BottomSide = ({ refetchModal }) => {
  const [randomDishes, setRandomDishes] = useState();

  useEffect(() => {
    const fetchRandomDishes = async () => {
      setRandomDishes(await API.get.random10());
    }
    fetchRandomDishes();
  }, [])
  if (!randomDishes) return <></>
  return (
    <BottomSideWrapper>
      <Carousel.Container navigator={"upper"} unit={5}>
        {/* for test */}
        {randomDishes.map((dish, i) => {
          return <Card key={`test-${i}`} number={i} type={"responsive"} payload={dish} refetchModal={refetchModal} />;
        })}

      </Carousel.Container>
    </BottomSideWrapper>
  );
};

const BottomSideWrapper = styled.div`
  width: 960px;
  padding: 24px 48px;
  box-sizing: border-box;
  background: #F5F5F7;
  border-radius: 0px 0px 5px 5px;
`;

export default BottomSide;
