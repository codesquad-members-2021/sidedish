import React, { useState } from 'react';
import BestSidedish from 'component/BestSidedish/BestSidedish';
import SlideDish from 'component/SlideDish/SlideDish';

const Main = () => {
  const [slideDishCount, setSlideDishCount] = useState(1);
  const slideDishes = ['main', 'soup', 'side'];
  const slideDishList = slideDishes
    .slice(0, slideDishCount)
    .map((category, idx) => <SlideDish key={idx} category={category} />);

  return (
    <div>
      <BestSidedish />
      {slideDishList}
      {/* <MoreButton /> */}
    </div>
  );
};

export default Main;
