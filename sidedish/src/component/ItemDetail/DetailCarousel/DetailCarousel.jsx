import React, {useRef} from 'react';
import styled from 'styled-components';
import Carousel from 'react-cool-kyle-carousel/dist/Carousel';
import { IoChevronBackSharp, IoChevronForwardSharp } from 'react-icons/io5';

const DetailCarousel = ({recommendList}) => {
  const carouselRef = useRef();

    const carouselSettings = {
        ref : carouselRef,
        speed: 500,
        slideToScroll: 1,
        defaultPaging: true
      }

    return (
      <StyleDetailCarousel>
        <ArrowContainer>
        <IoChevronBackSharp onClick= {() => carouselRef.current.handleClickPrev()} className="left_arrow" />
        {/* <indexComp> */}
        <IoChevronForwardSharp onClick= {() => carouselRef.current.handleClickNext()} className="right_arrow"/>
        </ArrowContainer>
        
          
        
        <div className="bottom_contents_wrapper">
          <div className="header">
              <span>함께하면 더욱 맛있는 상품</span>
              <span>화살표들어갈자리</span>
           </div>
        <div className="carousel_container">
          <Carousel {...carouselSettings}>
          {recommendList}
          </Carousel>
        </div>
      </div>
      </StyleDetailCarousel>
    );
}


export default DetailCarousel;


const StyleDetailCarousel = styled.div`
background-color: ${({ theme: { colors } }) => colors.lightGray};
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  padding: 48px;
  position: relative;
  
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
    width: 90%;
    display: flex;
    justify-content: space-between;
  }
`

const ArrowContainer = styled.div`
 display: flex;
 justify-content: space-between;
 position: absolute;
 right: 48px;
 width: 80px;
 .arrow-left {

 } 
 .arrow-right {
   
  } 
`
