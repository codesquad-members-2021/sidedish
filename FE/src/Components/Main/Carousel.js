import React, {
  useState,
  useEffect,
  forwardRef,
  useImperativeHandle,
} from "react";
import styled from "styled-components";
import CarouselCard from "./CarouselCard";

const Carousel = (
  { MainTitle, Food, setFood, Ref, setModal, setModalData },
  ref
) => {
  const virtualImage = Food.slice(Food.length - 4, Food.length); // 마지막부분 4개의 사진을 복사하여 0~4번 이미지를 만들어준다.
  const transitionDefault = `all 0.5s ease-in-out`;
  const panelWidth = 344;
  const panelCount = 4;
  const [X, setX] = useState(0);
  const [moving, setMoving] = useState(false);
  const [transitionValue, setTransitionValue] = useState(transitionDefault);

  useImperativeHandle(ref, () => ({
    Slider,
  }));

  useEffect(() => {
    if (transitionValue === "none") setTransitionValue(transitionDefault);
  }, [X]);

  const Slider = (direction) => {
    if (moving) return;
    setX((prevX) =>
      prevX
        ? prevX + direction * panelWidth * panelCount
        : direction * panelWidth * panelCount
    );
    setMoving(true);
  };

  const onTransitionEnd = () => {
    setMoving(false);
    setTransitionValue("none");
    const first = Food.slice(4, Food.length);
    const result = first.concat(Food.slice(0, 4));
    setFood(result);
    setX(0);
  };

  return (
    <Box>
      <CarouselTitle>{MainTitle}</CarouselTitle>
      {
        <CarouselImage>
          <Image
            ref={Ref}
            X={X}
            transitionValue={transitionValue}
            onTransitionEnd={onTransitionEnd}
          >
            {virtualImage
              .concat(Food)
              .map(
                (
                  {
                    detail_hash,
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
                    <CarouselCard
                      key={index}
                      detail_hash={detail_hash}
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
  /* height: 534px; */
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
  transform: ${({ X }) => `translateX(${X}px)`};
  transition: ${({ transitionValue }) => transitionValue};
  z-index: 0;
  display: flex;
`;

export default forwardRef(Carousel);
