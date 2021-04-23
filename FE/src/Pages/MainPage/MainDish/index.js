import { useState, useEffect } from 'react';
import styled from 'styled-components';

import { Container } from '../../../Components/commons/base.js';
import * as Carousel from '../../../Components/Carousel';
import Card from '../../../Components/commons/Card.js';

import API from '../../../util/API.js';

const MainDish = () => {
  const [mainDishes, setMainDishes] = useState([]);
  useEffect(() => {
    const fetchMainDish = async () => {
      setMainDishes(await API.get.maindish());
      console.log("fetchMainDish!")
    }
    fetchMainDish();
  }, [])
  
  return (
    <CarouselLayout>
      <Carousel.Container type={"default"} unit={3}>
        {/* for test */}
        {[...new Array(8).keys()].map((_,i) => {
          return <Card key={`test-${i}`} number={i} type={"responsive"} />;
        })}  
        
      </Carousel.Container>
    </CarouselLayout>
  )
}

const CarouselLayout = styled.div``;

// const Mocking = styled.div`
//   min-width: 200px;
//   height: 200px;
//   background-color: blue;
// `
// const Card = styled(Mocking)`
// `

export default MainDish;
