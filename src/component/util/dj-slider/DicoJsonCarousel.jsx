import { useState, useEffect, createContext, useContext, useRef } from "react";
import { FaChevronLeft, FaChevronRight } from "react-icons/fa";
import styled from "styled-components";

export function DicoJsonCarousel({ children, options = {} }) {
  const {
    perPanel = 4,
    speed = 800,
    autoplay = false,
    interval = 2500,
    dots = false,
    count = false,
    loop = true,
  } = options;
  const maxPage = Math.ceil(children.length / perPanel);
  const [page, setPage] = useState(0);
  const transitionDefault = `transform ${speed}ms ease-in-out`;
  const [x, setX] = useState(-100 / 3);
  const [moving, setMoving] = useState(false);
  // const [autoplayState, setAutoplayState] = useState(autoplay);
  const [trasitionValue, setTransitionValue] = useState(transitionDefault);
  const direction = useRef(0);
  direction.current = 0;

  const onTransitionEnd = () => {
    setMoving(false);
    setTransitionValue("none");
    let next = x > -1 ? page - 1 : page + 1;
    if (next < 0 && !loop) {
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
  if (loop) {
    for(let i = (page - 1) * perPanel; i < (page + 2) * perPanel; i++) {
      if(i < 0)
        components.push(
          <div key={"a" + components.length}>
            {children[((i % children.length) + children.length) % children.length]}
          </div>
        );
      else
        components.push(
          <div key={"a" + components.length}>
            {children[i % children.length]}
          </div>
        );
    }
  } else {
    for (let i = perPanel * (page - 1); i < children.length; i++) {
      components.push(<div key={"a" + components.length}>{children[i]}</div>);
    }
  }

  // useEffect(() => {
  //   if(loop && autoplayState) {
  //     setAutoplayState(false);
  //     setTimeout(async () => {
  //       onMovePage(1);
  //       setAutoplayState(true);
  //     }, interval);
  //   }
  // }, [autoplayState]);

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
          active={loop || page > 0}
        >
          <FaChevronLeft />
        </CarouselLeftArrow>
        <CarouselRightArrow
          onClick={() => onMovePage(1)}
          active={loop || page < maxPage - 1}
        >
          <FaChevronRight />
        </CarouselRightArrow>
      </CarouselArrows>
      {dots && <Dots />}
      {count && (
        <Count className="carousel-count">
          {page + 1}/{maxPage + 1}
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


// 디코 최고
/*
페이지  /   시작점(-1페이지의 가장 첫번째 인덱스)
5(children.length) % 4(perPanel) = 1
-3    4
-2    3
-1    2
0     1    '1' 2 3 4 | 0 1 2 3 | 4 0 1 2
1     0  index + 3페이지에 들어가는 총 요소 갯수 %
2     4

6(children.length) % 4(perPanel)= 2
-2    0
-1    4
0     2   '2' 3 4 5 | 0 1 2 3 | 4 5 0 1
1     0
2     4

6(children.length) % 5(perPanel) = 1

0    1   '1' 2 3 4 5 | 0 1 2 3 4 | 5 0 1 2 3


5(children.length) % 4(perPanel) = 1

-4
1 2 3 4 | 0 1 2 3 | 4 1 2 3

1이상이면
(page - 1) * perPanel(4) ~ (page + 2) * perPanel(4)

0일 때
(-1) * perPanel ~ (2) * perPanel
-4 ~ 8 // [0, 1, 2, 3, 4]

page = 0
범위 = -4 ~ 8
// -4 와 1의 연관성, -3과 2의 연관성, -2와 3의 연관성, -1과 4의 연관성
// 1 2 3 4 | 0 1 2 3 | 4 0 1 2

음수일 때,

page = -4
0 1 2 3 | 4 0 1 2 | 3 4 0 1
page = -3
4 0 1 2 | 3 4 0 1 | 2 3 4 0
page = -2
3 4 0 1 | 2 3 4 0 | 1 2 3 4
page = -1
2 3 4 0 | 1 2 3 4 | 0 1 2 3

(page - 1) * perPanel(4) ~ (page + 2) * perPanel(4)

page = 0
범위 = -4 ~ 8 // -4 % 5 = -4 + children.length 1 % children.length = 1

page = -1
범위 = -8 ~ 4 // -8 % 5 = -3 + children.length 2 % children.length = 2

page = -2
범위 = -12 ~ 0 // -12 % 5 = -2 + children.length 3 % children.length = 3

page = -3
범위 = -16 ~ -4 // -16 % 5 = -1 + children.length 4 % children.length = 4

page = -4
범위 = -20 ~ -8 // -20 % 5 = 0 + children.length  5 % children.length = 0

// page = 1
// 0 1 2 3 | 4 0 1 2 | 3 4 0 1
// page = 2
// 4 0 1 2 | 3 4 0 1 | 2 3 4 0
// page = 3
// 3 4 0 1 | 2 3 4 0 | 1 2 3 4

/*
*/

  /* 루프가 있다면???  */
  // 최소 페이지나 최대 페이지 외의 영역에도, 반대 영역의 요소들을 앞, 뒤로 붙여야 함!
  // 5
  // 1 2 3 4 | 0 1 2 3 | 4 0 1 2
  // 음수 일 때 page -1, -2
  // page = -3 - -1 = -4
  // 4 0 1 2 | 3 4 0 1 | 2 3 4 0
  // page = -2 - -1 = -3
  // 3 4 0 1 | 2 3 4 0 | 1 2 3 4
  // page = -1 - -1 = -2
  // 2 3 4 0 | 1 2 3 4 | 0 1 2 3
  // page = 0 - 1 = 1
  // 1 2 3 4 | 0 1 2 3 | 4 0 1 2
  // page = 1
  // 0 1 2 3 | 4 0 1 2 | 3 4 0 1
  // page = 2 - 1 ? 1
  // 4 0 1 2 | 3 4 0 1 | 2 3 4 0

  // children.length % perPanel = 나머지
  // Math.abs((page - 1) * perPanel - perPanel) % children.length
  // page = -2
  // abs((-2 - -1) * 4 - 4) = 16 % 5 = 1 
  // page = -1
  // abs((-1 - -1) * 4 - 4) = 12 % 5 = 2 
  // page = 0
  // abs((0 - -1) * 4 - 4) = 8 % 5 = 3
  
  // page * perPanel = -8 => abs(-8) = 8 % children.length = 3 ~ 15(미만)
  //  -3 * 4 = 12 = 2 ~ 14
  //  -2  *    4     = -8 => abs(-8) = 8 % 5 = 3 ~ 15
  //  -1 *  4 = -4 => 4 = 4 % 5 = 4 ~ 16

  // 렌더링 해야 될 아이템의 갯수(12) = perPanel * 3
  // 시작점이 i일 때, i + 12 미만 까지 components 배열에 추가하면 됨!
  // 나머지(1) = children.length % perPanel
  // maxPage 이상일 때

      // perPanel의 배수가 아닐 때

    // perPanel의 배수일 때
        // const [start, end] = [
    //   Math.abs(perPanel * (page - 1)),
    //   Math.abs(perPanel * (page - 1)) + perPanel * 2,
    // ].sort((a, b) => a - b);
    // for (let i = start; i < end; i++) {
    //   components.push(
    //     <div key={"a" + components.length}>{children[i % children.length]}</div>
    //   );
    // }