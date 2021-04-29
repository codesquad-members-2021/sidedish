import React, { useState } from 'react';
import BestSidedish from 'component/BestSidedish/BestSidedish';
import SlideDish from 'component/SlideDish/SlideDish';
import MoreButton from 'component/atoms/MoreButton';

const Main = () => {
  const [slideDishCount, setSlideDishCount] = useState(1);
  const slideDishes = [
    { path: 'main', title: '모두가 좋아하는 든든한 메인요리' },
    { path: 'soup', title: '정성이 담긴 뜨끈한 국물요리' },
    { path: 'side', title: '식탁을 풍성하게 하는 정갈한 밑반찬' },
  ];

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
