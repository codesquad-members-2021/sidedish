import { useState, useEffect } from 'react';
import styled from 'styled-components';

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
      <Carousel.Container navigator={"default"} unit={3}>
        {/* for test */}
        {[...new Array(8).keys()].map((_,i) => {
          return <Card key={`test-${i}`} number={i} type={"responsive"} />;
        })}  
        
      </Carousel.Container>
    </CarouselLayout>
  )
}

const CarouselLayout = styled.div``;

export default MainDish;
