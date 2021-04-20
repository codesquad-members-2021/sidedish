import React, { useState, useEffect, useRef } from "react";
import styled from "styled-components";
import axios from "axios";
import Content from "./Content";
import Svg from "../../Svg/Button";

const Main = ({ URL }) => {
  const [List, setList] = useState([]);
  const [Right, setRight] = useState(Svg.BeforeRight);
  const [Left, setLeft] = useState(Svg.BeforeLeft);
  const [xtransform, setXtransform] = useState("-1360");
  const SlideRef = useRef(null);

  const fetchData = async () => {
    const data = await axios(URL + "main").then((res) => res.data.body);
    setList(data.concat(data));
  };

  useEffect(() => {
    fetchData();
  }, []);

  const MouseEnter = (e) => {
    e.target.classList.contains("Left")
      ? setLeft(Svg.AfterLeft)
      : setRight(Svg.AfterRight);
  };
  const MouseLeave = (e) => {
    e.target.classList.contains("Left")
      ? setLeft(Svg.BeforeLeft)
      : setRight(Svg.BeforeRight);
  };

  const Slider = (e) => {
    const RightClass = e.target.classList.contains("Right");
    const LeftClass = e.target.classList.contains("Left");
    SlideRef.current.style.transition = "0.5s transform ease-in-out";

    if (RightClass) {
      SlideRef.current.style.transform = `translateX(${xtransform - 1360}px)`;
      const first = List.slice(4, List.length);
      const result = first.concat(List.slice(0, 4));

      setTimeout(() => {
        SlideRef.current.style.transition = "none";
        SlideRef.current.style.transform = `translateX(-1360px)`;
        setList(result);
      }, 500);
    }
    if (LeftClass) {
      SlideRef.current.style.transform = `translateX(${0}px)`;
      const first = List.slice(4, List.length);
      const result = first.concat(List.slice(0, 4));
      setTimeout(() => {
        SlideRef.current.style.transition = "none";
        SlideRef.current.style.transform = "translateX(-1360px)";
        setList(result);
      }, 500);
    }
  };

  return (
    <Box className="zz">
      <CarouselTitle>모두가 좋아하는 든든한 메인요리</CarouselTitle>
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
          <Carousel>
            <Image ref={SlideRef} xtransform={xtransform}>
              {List.map(
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
                    />
                  );
                }
              )}
            </Image>
          </Carousel>
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
  height: 554px;
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

const Carousel = styled.div`
  display: flex;
  overflow: hidden;
`;

const Image = styled.div`
  transform: ${({ xtransform }) => `translateX(${xtransform}px)`};
  z-index: 0;
  display: flex;
`;

export default Main;
