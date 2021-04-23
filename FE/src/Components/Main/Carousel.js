import React, { useState, forwardRef, useImperativeHandle } from "react";
import styled from "styled-components";
import Content from "./CarouselCard";

const Carousel = (
  { MainTitle, Food, setFood, Ref, setModal, setModalData },
  ref
) => {
  const [xtransform] = useState("-680");

  useImperativeHandle(ref, () => ({
    Slider,
  }));

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
        Ref.current.style.transform = `translateX(-680px)`;
        setFood(result);
      }, 500);
    }
    if (LeftClass) {
      Ref.current.style.transform = `translateX(${680}px)`;
      const first = Food.slice(4, Food.length);
      const result = first.concat(Food.slice(0, 4));
      setTimeout(() => {
        Ref.current.style.transition = "none";
        Ref.current.style.transform = "translateX(-680px)";
        setFood(result);
      }, 500);
    }
  };

  return (
    <Box>
      <CarouselTitle>{MainTitle}</CarouselTitle>
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
                    setModalData={setModalData}
                  />
                );
              }
            )}
          </Image>
        </CarouselImage>
      }
    </Box>
  );
};

const Box = styled.div`
  width: 1392px;
  height: 534px;
  margin: auto;
`;

const CarouselTitle = styled.div`
  width: 350px;
  height: 35px;
  margin: 0 36px;

  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 24px;
  line-height: 35px;
`;

const CarouselImage = styled.div`
  display: flex;
  justify-content: center;
  overflow: hidden;
`;

const Image = styled.div`
  transform: ${({ xtransform }) => `translateX(${xtransform}px)`};
  z-index: 0;
  display: flex;
`;

export default forwardRef(Carousel);
