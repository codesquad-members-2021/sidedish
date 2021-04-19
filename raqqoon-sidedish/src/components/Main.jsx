import { useEffect, useState } from 'react';
import Carousel from './Carousel/Carousel';
import TabUI from './TabUI/TabUI';

const Main = () => {
  return (
    <div>
      <TabUI />
      <Carousel />
    </div>
  );
};

export default Main;
