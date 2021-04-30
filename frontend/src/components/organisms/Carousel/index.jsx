import React, { useRef } from 'react';
import { CardStyle, WrapCard, WrapMain, WrapCarousal } from './index.style';

const Carousel = ({ children, ...props }) => {
  const directionRef = useRef(false);
  const SLIDES = props.visibleSlides;
  const LENGTH = props.imageWidth * SLIDES + props.imageMargin * (SLIDES + 4);

  const Slides = () => {
    return <>{children}</>;
  };

  const setStyle = (duration, move) => {
    directionRef.current.style.transition = duration;
    directionRef.current.style.transform = move;
  };

  const moveSlide = type => {
    if (type === 'RightIcon') {
      setStyle('all 0.5s', `translate(-${LENGTH}px)`);
    } else {
      setStyle('all 0.5s', `translate(${LENGTH}px)`);
    }
  };

  const onTransitionEnd = type => {
    if (type === 'RightIcon') {
      props.setData(
        props.data.slice(SLIDES).concat(props.data.slice(0, SLIDES))
      );
    } else {
      props.setData(
        props.data.slice(-SLIDES).concat(props.data.slice(0, -SLIDES))
      );
    }
    directionRef.current.style.transform = 'translate(0)';
    directionRef.current.style.transition = 'none';
  };

  return (
    <div>
      <WrapMain marginTop={10}>
        <WrapCarousal marginTop={40}>
          <div
            onClick={() => {
              moveSlide('LeftIcon');
            }}
          >
            <props.ButtonLeft />
          </div>
          <WrapCard
            _imgMargin={props.imageMargin}
            _slides={props.visibleSlides}
            _slideWidth={LENGTH}
            _imgHeight={props.imageHeight}
          >
            <CardStyle onTransitionEnd={onTransitionEnd} ref={directionRef}>
              <Slides />
            </CardStyle>
          </WrapCard>
          <div
            onClick={() => {
              moveSlide('RightIcon');
            }}
          >
            <props.ButtonRight />
          </div>
        </WrapCarousal>
      </WrapMain>
    </div>
  );
};

export default Carousel;
