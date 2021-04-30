import { useState, useEffect, createContext, useContext, useRef } from "react";
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
  const direction = useRef(0);
  direction.current = 0;

  const onTransitionEnd = () => {
    setMoving(false);
    setTransitionValue("none");
    let next = x > -1 ? page - 1 : page + 1;
    if (next < 1 && !loop) {
      next = maxPage;
    }
    if (next > maxPage && !loop) {
      next = 1;
    }
    setPage(next);
    setX(-100 / 3);
  };

  const onMovePage = (count) => {
    if (moving) return;
    direction.current = 0;
    setX(count > 0 ? (-100 / 3) * 2 : 0);
    setMoving(true);
    direction.current = count;
  };

  useEffect(() => {
    if (trasitionValue === "none") setTransitionValue(transitionDefault);
  }, [x]);

  const components = [];
  if (page === 1) {
    children.slice((page - 2) * perPanel).forEach((v) => {
      components.push(<div key={"a" + components.length}>{v}</div>);
    });
  } else {
    // 0 이전 이동, -33 현재 (정적 상태), -66 이후 이동
    // 5
    // console.log(direction, page);
    children
      .slice((page - 2) * perPanel, (page - 1) * perPanel)
      .forEach((v) => {
        components.push(<div key={"a" + components.length}>{v}</div>);
      });
    if (direction.current > 0) {
      let i = 0;
      while (components.length < perPanel) {
        components.push(
          <div key={"a" + components.length}>
            {children[i++ % children.length]}
          </div>
        );
      }
    } else {
      if (children.length % perPanel && page < 1) {
        // if (page < 1) {
        // page 0, -1일 때만 문제가 발생 ( perPanel로 나누어 떨어지지 않는 children만!)
        // 되돌아 갈 때도 문제... ;;;;;;;;;;;🥺
        // page 0일 때,
        // i = Math.abs(-1 + 1 - 2) * 4 === 8;
        // i -= 4 * -1 === 12; // 2
        // 2 3 4 5 // 1
        // i -= perPanel * direction.current + moving * 2;
        // if (page >= -1 && children.length % perPanel && direction === -1) {
        // 여기만 처리?
        //   i -= 2;
        // }
        // }
        // if(direction > 0) {
        //   children = [...children, children.slice(children % perPanel)];
        // } else {
        //   children = [children.slice(children % perPanel), ...children];
        // }
      }
      let i = Math.abs(direction.current + page - moving * 2) * perPanel;
      while (components.length < perPanel) {
        components.push(
          <div key={"a" + components.length}>
            {children[i++ % children.length]}
          </div>
        );
      }
    }
  }

  if (loop) {
    const [start, end] = [
      Math.abs(perPanel * (page - 1)),
      Math.abs(perPanel * (page - 1)) + perPanel * 2,
    ].sort((a, b) => a - b);
    for (let i = start; i < end; i++) {
      components.push(
        <div key={"a" + components.length}>{children[i % children.length]}</div>
      );
    }
  } else {
    for (let i = perPanel * (page - 1); i < children.length; i++) {
      components.push(<div key={"a" + components.length}>{children[i]}</div>);
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
        <CarouselLeftArrow
          onClick={() => onMovePage(-1)}
          active={loop || page > 1}
        >
          <FaChevronLeft />
        </CarouselLeftArrow>
        <CarouselRightArrow
          onClick={() => onMovePage(1)}
          active={loop || page < maxPage}
        >
          <FaChevronRight />
        </CarouselRightArrow>
      </CarouselArrows>
      {dots && <Dots />}
      {count && (
        <Count className="carousel-count">
          {page}/{maxPage}
        </Count>
      )}
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
