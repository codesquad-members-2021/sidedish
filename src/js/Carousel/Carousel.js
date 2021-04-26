import React, { useEffect, useState } from "react";
import styled, { css } from "styled-components";
import { HiOutlineChevronLeft, HiOutlineChevronRight } from "react-icons/hi";

const carouselContext = () => {
  const carouselStates = [];
  const moveControllers = {};

  const transitionDefault = "all .5s";

  const Carousel = (props) => {
    const state = _findCarousel(props.carouselId) ?? props;
    if (state === props) {
      carouselStates.push(props);
    }
    const {
      carouselId,
      children: items,
      itemsPerPeice,
      onClickItem,
      gap = "0.5rem",
      autoFit = false,
    } = state;

    const list = _createVirtureSlides(items, itemsPerPeice);
    const [slides, setSlides] = useState(list);
    const [x, setX] = useState(-100);
    const [moving, setMoving] = useState(false);
    const [trasitionValue, setTransitionValue] = useState(transitionDefault);

    const onMove = (direction) => {
      if (moving) return;
      setX((prevX) => prevX + direction * 100);
      setMoving(true);
    };
    setController(carouselId, onMove);
    const onTransitionEnd = () => {
      setMoving(false);
      if (x === -itemsPerPeice * 100) {
        setTransitionValue("none");
        setSlides((slides) => {
          const slide = slides.shift();
          return [...slides, slide];
        });
        setX(-itemsPerPeice * 100 + 100);
      } else if (x === 0) {
        setTransitionValue("none");
        setSlides((slides) => {
          const slide = slides.pop();
          return [slide, ...slides];
        });
        setX(-100);
      }
    };

    useEffect(() => {
      if (trasitionValue === "none") setTransitionValue(transitionDefault);
    }, [x]);

    const ulStyles = {
      transform: `translate3d(${x}%, 0, 0)`,
      transition: trasitionValue,
      display: "flex",
    };
    const renderList = (list) => {
      return list.map((slide, index) => {
        return (
          <Slide key={index}>
            {slide.map((item, index) => (
              <SlideItem key={index}>{item}</SlideItem>
            ))}
          </Slide>
        );
      });
    };
    
    return (
      <>
        <Wrap className="App">
          <CarouselContainer style={ulStyles} onTransitionEnd={onTransitionEnd}>
            {renderList(slides)}
          </CarouselContainer>
        </Wrap>
      </>
    );
  };

  const PrevButton = ({ carouselId }) => {
    return (
      <Button onClick={() => moveControllers[carouselId](+1)}>
        <HiOutlineChevronLeft />
      </Button>
    );
  };

  const NextButton = ({ carouselId }) => {
    return (
      <Button onClick={() => moveControllers[carouselId](-1)}>
        <HiOutlineChevronRight />
      </Button>
    );
  };

  //built-in

  const setController = (id, move) => {
    moveControllers[id] = move;
  };

  const _isThereState = (targetId) => {
    return _findCarousel(targetId) ? true : false;
  };

  const _slideCarousel = (targetId, dir) => {
    const TargetCarousel = _findCarousel(targetId);
  };

  const _findCarousel = (targetId) => {
    return carouselStates.find((state) => state.id === targetId);
  };

  return { Carousel, PrevButton, NextButton };
};

const _createVirtureSlides = (items, itemsPerPeice) => {
  if (!Array.isArray(items)) {
    return [items];
  }
  if (items.length === 0) return [];
  const newItems = items.reduce((result, item, index) => {
    const [i, j] = _divmod(index, itemsPerPeice);
    result[i] ? (result[i][j] = item) : (result[i] = [item]);
    return result;
  }, []);
  return newItems;
};
const _divmod = (a, b) => {
  return [parseInt(a / b), a % b];
};
const Wrap = styled.div`
  margin: 50px 0;
`;
const CarouselContent = styled.div`
  width: 90%;
  overflow: hidden;
`;
const CarouselContainer = styled.div`
  display: flex;
`;
const Slide = styled.ul`
  background: tan;
  border: 1px solid black;
  display: flex;
  width: 100%;
  flex: 1 0 auto;
  padding: 0;
  padding-right: ${({ gap }) => `${gap}`};
  &::first-child {
  }
`;
const SlideItem = styled.li`
  list-style-type: none;
  ${({ autoFit, itemsPerPeice, gap }) => css`
    width: ${autoFit ? `calc(100%/${itemsPerPeice})` : "auto"};
    & + & {
      margin-left: ${gap};
    }
  `}
`;
const Button = styled.div``;

export default carouselContext();
