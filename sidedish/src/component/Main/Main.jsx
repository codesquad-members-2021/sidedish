import React, { useState } from 'react';
import BestSidedish from 'component/BestSidedish/BestSidedish';
import SlideDish from 'component/SlideDish/SlideDish';
import MoreButton from 'component/atoms/MoreButton';

const Main = () => {
  const [slideDishCount, setSlideDishCount] = useState(1);
  const slideDishes = ['main', 'soup', 'side'];
  const slideDishList = slideDishes
    .slice(0, slideDishCount)
    .map((category, idx) => <SlideDish key={idx} category={category} />);

  const plusSlideDish = () => {
    setSlideDishCount((slideDishCount) => {
      if (slideDishCount === slideDishes.length) return 1;
      return slideDishCount + 1;
    });
  };

  return (
    <div>
      <BestSidedish />
      {slideDishList}
      <MoreButton
        count={slideDishCount}
        maxCount={slideDishes.length}
        handleClick={plusSlideDish}
      />
    </div>
  );
};

export default Main;
