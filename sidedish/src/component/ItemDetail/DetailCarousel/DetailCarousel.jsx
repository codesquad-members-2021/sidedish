import React, {useRef} from 'react';
import styled from 'styled-components';
import Carousel from 'react-cool-kyle-carousel/dist/Carousel';
import { IoChevronBackSharp, IoChevronForwardSharp } from 'react-icons/io5';
import DetailCarouselPaging from './DetailCarouselPaging';


const DetailCarousel = ({recommendList}) => {
  const carouselRef = useRef();

    const carouselSettings = {
        ref : carouselRef,
        speed: 500,
        slideToScroll: 1,
        PagingComp: DetailCarouselPaging,
      }

    return (
      <StyleDetailCarousel>        
        <div className="bottom_contents_wrapper">
          <div className="header">
              <div>함께하면 더욱 맛있는 상품</div>
              <div> 
                <ArrowContainer>
                  <IoChevronBackSharp onClick= {() => carouselRef.current.handleClickPrev()} className="left_arrow" />
                  <IoChevronForwardSharp onClick= {() => carouselRef.current.handleClickNext()} className="right_arrow"/>
                   </ArrowContainer>
                   </div>
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
    width: 100%;
    display: flex;
    justify-content: space-between;
    margin-bottom: 10px;
  }

  .detail_paging {
    position: absolute;
    top: -32px;
    right: 25px;
  }
`

const ArrowContainer = styled.div`
 display: flex;
 justify-content: space-between;
 width: 80px;
 .arrow-left {

 } 
 .arrow-right {
   
  } 
`
