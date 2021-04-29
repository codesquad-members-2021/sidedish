import { useState, useEffect, createContext, useContext } from "react";
import { FaChevronLeft, FaChevronRight } from "react-icons/fa";
import styled from "styled-components";

export function DicoJsonCarousel({ children, options = {} }) {
  const {
    perPanel = 4,
    speed = 500,
    // interval = 1000,
    // autoplay = true,
    dots = false,
    count = false,
    loop = false,
  } = options;
  const maxPage = Math.ceil(children.length / perPanel);
  const [page, setPage] = useState(1);
  const transitionDefault = `transform ${speed}ms`;
  const [x, setX] = useState(-100 / 3);
  const [moving, setMoving] = useState(false);
  const [trasitionValue, setTransitionValue] = useState(transitionDefault);

  const onTransitionEnd = () => {
    setMoving(false);
    setTransitionValue("none");
    let next = x > -1 ? page - 1 : page + 1;
    if(next < 1) {
      next = maxPage;
    }
    if(next > maxPage && !loop) {
      next = 1;
    }
    setPage(next);
    setX(-100 / 3);
  };

  const onMovePage = (count) => {
    if (moving) return;
    setX(count > 0 ? -100 / 3 * 2 : 0);
    setMoving(true);
  };
  
  useEffect(() => {
    if (trasitionValue === "none") setTransitionValue(transitionDefault);
  }, [x]);

  const components = [];
  const getSalePrice = (price, discountRate) => {
    return price - price * (discountRate / 100);
  };
  if (page === 1) {
    children.slice((page - 2) * perPanel).forEach(v => {
      components.push(<div key={'a' + components.length}>{v}</div>);
    });
  } else {
    children.slice((page - 2) * perPanel, (page - 1) * perPanel).forEach(v => {
      components.push(<div key={'a' + components.length}>{v}</div>);
    });
  }

  /*
    page = 3, children은 길이가 5
    children.slice(4, 8) // 5가 아니라 4 5 1 2
  */

  if(loop) {
    for (let i = perPanel * (page - 1); i < perPanel * (page + 1); i++) {
      components.push(<div key={'a' + components.length}>{children[i % children.length]}</div>);
    }
  } else {
    for (let i = perPanel * (page - 1); i < children.length; i++) {
      components.push(<div key={'a' + components.length}>{children[i]}</div>);
    }
  }

  // if(loop && autoplay) {
  //   setTimeout(() => onMovePage(1), interval);
  // }

  if (!children) return null;

  const slideStyles = {
    transform: `translate3d(${x}%, 0, 0)`,
    transition: trasitionValue,
  };


  return (
    <DicoJsonCarouselContainer>
      <CarouselTrack>
        <CarouselListStyle
          style={slideStyles}
          perPanel={perPanel}
          onTransitionEnd={onTransitionEnd}
        >
          {components}
        </CarouselListStyle>
      </CarouselTrack>
      <CarouselArrows className="carousel-arrows">
        <CarouselLeftArrow onClick={() => onMovePage(-1)} active={loop || page > 1}>
          <FaChevronLeft />
        </CarouselLeftArrow>
        <CarouselRightArrow
          onClick={() => onMovePage(1)}
          active={loop || page < maxPage}
        >
          <FaChevronRight />
        </CarouselRightArrow>
      </CarouselArrows>
      {dots && <Dots/>}
      {count && <Count className="carousel-count">{page}/{maxPage}</Count>}
    </DicoJsonCarouselContainer>
  );
}

const DicoJsonCarouselContainer = styled.div`
  position: relative;
  width: 100%;
  min-height: 5vh;
`;

const CarouselTrack = styled.div`
  overflow: hidden;
  position: relative;
`;

const CarouselListStyle = styled.div`
  display: grid;
  width: 300%;
  grid-template-columns: repeat(${(props) => props.perPanel * 3}, 1fr);
  & > * {
    margin-right: 0.5rem;
    &:nth-child(${(props) => props.perPanel}n + 1) {
      margin-right: 1rem;
    }
    &:not(:nth-child(${(props) => props.perPanel}n + 1)) {
      margin-left: 0.5rem;
    }
    &:nth-child(${(props) => props.perPanel}n) {
      margin-right: 0rem;
      margin-left: 1rem;
    }
  }
`;

const CarouselArrows = styled.div`
  position: absolute;
  width: calc(100% + 7rem);
  top: calc(50% - 4rem);
  left: -3.5rem;
  display: flex;
  justify-content: space-between;
  & > * {
    padding: 1rem;
    line-height: 1rem;
    font-size: 1.25rem;
    cursor: pointer;
  }
`;

const CarouselLeftArrow = styled.div`
  opacity: ${(props) => (props.active ? 1 : 0.5)};
  user-select: ${(props) => (props.active ? "initial" : "none")};
  pointer-events: ${(props) => (props.active ? "initial" : "none")};
`;

const CarouselRightArrow = styled.div`
  opacity: ${(props) => (props.active ? 1 : 0.5)};
  user-select: ${(props) => (props.active ? "initial" : "none")};
  pointer-events: ${(props) => (props.active ? "initial" : "none")};
`;

const Dots = styled.div``;

const Count = styled.div``;