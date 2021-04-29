import React, {
  useState,
  useEffect,
  forwardRef,
  useImperativeHandle,
} from "react";
import styled from "styled-components";
import CarouselCard from "./CarouselCard";
const Carousel = (
  { PopUp, MainTitle, Food, setFood, Ref, setModal, setModalData },
  ref
) => {
  const virtualImage = PopUp ? Food : Food.slice(Food.length - 4, Food.length); // 마지막부분 4개의 사진을 복사하여 0~4번 이미지를 만들어준다.
  const transitionDefault = `all 0.5s ease-in-out`;
  const panelWidth = PopUp ? 180 : 325;
  const panelCount = PopUp ? 5 : 4;
  const [X, setX] = useState(0);
  const [moving, setMoving] = useState(false);
  const [transitionValue, setTransitionValue] = useState(transitionDefault);

  useImperativeHandle(ref, () => ({
    Slider,
  }));

  useEffect(() => {
    if (transitionValue === "none") setTransitionValue(transitionDefault);
  }, [X]); // eslint-disable-line

  const Slider = (direction) => {
    if (PopUp) {
      if (moving) return;
      setX((prevX) =>
        prevX
          ? prevX + direction * panelWidth * panelCount
          : direction * panelWidth * panelCount
      );
      setMoving(true);
    } else {
      if (moving) return;
      setX((prevX) =>
        prevX
          ? prevX + direction * panelWidth * panelCount
          : direction * panelWidth * panelCount
      );
      setMoving(true);
    }
  };

  const onTransitionEnd = () => {
    if (!PopUp) {
      setMoving(false);
      setTransitionValue("none");
      const first = Food.slice(4, Food.length);
      const result = first.concat(Food.slice(0, 4));
      setFood(result);
      setX(0);
    }
  };

  return (
    <Box PopUp={PopUp}>
      <CarouselTitle PopUp={PopUp}>{MainTitle}</CarouselTitle>
      {
        <CarouselImage>
          <Image
            PopUp={PopUp}
            ref={Ref}
            X={X}
            transitionValue={transitionValue}
            onTransitionEnd={onTransitionEnd}
          >
            {virtualImage
              .concat(PopUp ? [] : Food)
              .map(
                (
                  {
                    detailHash,
                    image,
                    alt,
                    deliveryType,
                    title,
                    description,
                    nprice,
                    sprice,
                    badge,
                  },
                  index
                ) => {
                  return (
                    <CarouselCard
                      key={index}
                      PopUp={PopUp}
                      detailHash={detailHash}
                      image={image}
                      alt={alt}
                      delivery_type={deliveryType}
                      title={title}
                      description={description}
                      n_price={nprice}
                      s_price={sprice}
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
  width: ${({ PopUp }) => (PopUp ? `900px` : `1280px`)};
  margin: ${({ PopUp }) => (PopUp ? `0px` : `80px auto 0`)};
  z-index: ${({ PopUp }) => (PopUp ? `2` : `1`)};
`;

const CarouselTitle = styled.div`
  width: 350px;
  height: 35px;
  margin: ${({ PopUp }) => (PopUp ? `10px 0` : `0 0 40px 0 `)};

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
  transform: ${({ PopUp, X }) =>
    PopUp ? `translateX(${X - 100}px)` : `translateX(${X}px)`};
  transition: ${({ transitionValue }) => transitionValue};
  display: flex;
`;

export default forwardRef(Carousel);
