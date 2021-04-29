import React, { useRef } from 'react';
import Icon from '../../atoms/Icon';
import { CardStyle, WrapCard, WrapMain, WrapCarousal } from './index.style';

const Carousel = ({ children, ...props }) => {
  const directionRef = useRef(false);

  const SLIDES = props.visibleSlides;
  const LENGTH = () => {
    return props.imageWidth * SLIDES + props.imageMargin * (SLIDES + 4);
    //slide + 개수 이유 확인
  };

  const Foo = () => {
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
      <WrapMain>
        <WrapCarousal>
          <Icon
            moveSlide={moveSlide}
            _width="32px"
            _color="#BDBDBD"
            _type="LeftIcon"
            _margin="130px 25px 0 25px"
          />
          <WrapCard>
            <CardStyle onTransitionEnd={onTransitionEnd} ref={directionRef}>
              <Foo />
            </CardStyle>
          </WrapCard>
          <Icon
            moveSlide={moveSlide}
            _width="32px"
            _color="#BDBDBD"
            _type="RightIcon"
            _margin="130px 25px 0 25px"
          />
        </WrapCarousal>
      </WrapMain>
    </div>
  );
};

export default Carousel;
