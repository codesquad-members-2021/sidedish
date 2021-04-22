import React, { useState } from "react";
import styled from "styled-components";
import {
  BeforeRight,
  AfterRight,
  BeforeLeft,
  AfterLeft,
} from "../../Svg/Button";
import Content from "./Content";

const Carousel = ({ MainTitle, Food, setFood, Ref, setModal }) => {
  const [Right, setRight] = useState(BeforeRight);
  const [Left, setLeft] = useState(BeforeLeft);
  const [xtransform] = useState("-1360");

  const MouseEnter = (e) => {
    e.target.classList.contains("Left")
      ? setLeft(AfterLeft)
      : setRight(AfterRight);
  };
  const MouseLeave = (e) => {
    e.target.classList.contains("Left")
      ? setLeft(BeforeLeft)
      : setRight(BeforeRight);
  };

  const Slider = (e) => {
    const RightClass = e.target.classList.contains("Right");
    const LeftClass = e.target.classList.contains("Left");
    Ref.current.style.transition = "0.5s transform ease-in-out";

    if (RightClass) {
      Ref.current.style.transform = `translateX(${xtransform - 1360}px)`;
      const first = Food.slice(4, Food.length);
      const result = first.concat(Food.slice(0, 4));

      setTimeout(() => {
        Ref.current.style.transition = "none";
        Ref.current.style.transform = `translateX(-1360px)`;
        setFood(result);
      }, 500);
    }
    if (LeftClass) {
      Ref.current.style.transform = `translateX(${0}px)`;
      const first = Food.slice(4, Food.length);
      const result = first.concat(Food.slice(0, 4));
      setTimeout(() => {
        Ref.current.style.transition = "none";
        Ref.current.style.transform = "translateX(-1360px)";
        setFood(result);
      }, 500);
    }
  };
  return (
    <Box>
      <CarouselTitle>{MainTitle}</CarouselTitle>
      <CarouselContent>
        <Button
          className="Left"
          onMouseEnter={MouseEnter}
          onMouseLeave={MouseLeave}
          onClick={Slider}
        >
          {Left}
        </Button>
        {
          <CarouselImage>
            <Image ref={Ref} xtransform={xtransform}>
              {Food.map(
                (
                  {
                    image,
                    alt,
                    delivery_type,
                    title,
                    description,
                    n_price,
                    s_price,
                    badge,
                  },
                  index
                ) => {
                  return (
                    <Content
                      key={index}
                      image={image}
                      alt={alt}
                      delivery_type={delivery_type}
                      title={title}
                      description={description}
                      n_price={n_price}
                      s_price={s_price}
                      badge={badge}
                      setModal={setModal}
                    />
                  );
                }
              )}
            </Image>
          </CarouselImage>
        }
        <Button
          className="Right"
          onMouseEnter={MouseEnter}
          onMouseLeave={MouseLeave}
          onClick={Slider}
        >
          {Right}
        </Button>
      </CarouselContent>
    </Box>
  );
};

const Box = styled.div`
  width: 1392px;
  height: 534px;
  margin: auto;
`;

const CarouselTitle = styled.div`
  width: 326px;
  height: 35px;
  margin: 0 36px;

  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 24px;
  line-height: 35px;
`;

const CarouselContent = styled.div`
  display: flex;
`;
const Button = styled.button`
  z-index: 1;
  background-color: white;
  border: none;
  outline: none;
  &:active {
    transform: translateY(2px);
  }
`;

const CarouselImage = styled.div`
  display: flex;
  overflow: hidden;
`;

const Image = styled.div`
  transform: ${({ xtransform }) => `translateX(${xtransform}px)`};
  z-index: 0;
  display: flex;
`;

export default Carousel;
