import React, { useRef, useState } from 'react';
import styled from 'styled-components';
import Carousel from 'component/Carousel/Carousel';
import { IoChevronBackSharp, IoChevronForwardSharp } from 'react-icons/io5';
import DetailCarouselPaging from './DetailCarouselPaging';

const DetailCarousel = ({ recommendList }) => {
  const carouselRef = useRef();
  const [currentIndex, setCurrentIndex] = useState();

  const carouselSettings = {
    ref: carouselRef,
    speed: 500,
    slideToScroll: 1,
    setCurrentIndex,
  };

  return (
    <StyleDetailCarousel>
      <div className="bottom_contents_wrapper">
        <div className="header">
          <div className="header_title">함께하면 더욱 맛있는 상품</div>
          <div>
            <ArrowContainer>
              <IoChevronBackSharp
                onClick={() => carouselRef.current.handleClickPrev()}
                className="left_arrow"
              />
              <DetailCarouselPaging
                current={currentIndex}
                total={carouselRef.current && carouselRef.current.getTotal()}
              />
              <IoChevronForwardSharp
                onClick={() => carouselRef.current.handleClickNext()}
                className="right_arrow"
              />
            </ArrowContainer>
          </div>
        </div>
        <div className="carousel_container">
          <Carousel {...carouselSettings}>{recommendList}</Carousel>
        </div>
      </div>
    </StyleDetailCarousel>
  );
};

export default DetailCarousel;

const StyleDetailCarousel = styled.div`
  background-color: ${({ theme: { colors } }) => colors.lightGray};
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  padding: 48px;
  position: relative;
  .header_title {
    font-size: 1.2rem;
    font-weight: 700;
  }
  .carousel_container {
    width: 100%;
  }

  .bottom_contents_wrapper {
    width: 100%;
    padding: 26px 0px;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  .header {
    font-size: 18px;
    width: 100%;
    display: flex;
    justify-content: space-between;
    margin-bottom: 10px;
  }
`;

const ArrowContainer = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 80px;
  height: 100%;
`;
