import { useEffect, useRef, useState } from "react";
import styled from "styled-components";
import IconButton from "../../utils/button/IconButton";
import Card from "../../utils/card/Card";
import { CenterContainer } from "../../utils/styles/common";
import { mockData } from "../../../utils/mockData";
import JennyCarousel from "reallyawesome-jennyrousel/dist/JennyCarousel";
import theme from "../../utils/styles/theme";

const CarouselSection = ({ key, url, title, onModal }) => {
  const [products, setProducts] = useState([]);
  // const [products, setProducts] = useState(mockData);

  // const [currentX, setX] = useState(0);
  // const [currentIndex, setCurrentIndex] = useState(4);
  // const [rightDisabled, setLeftDisabled] = useState(false);
  // const [leftDisabled, setRightDisabled] = useState(true);
  // const slides = useRef();
  // const slideCount = 4;
  // const slideWidth = 320;
  // const totalWidth = 320 * slideCount + 16;
  // const speed = 300;
  // const direct = {
  //   LEFT: 1,
  //   RIGHT: -1,
  // };

  useEffect(() => {
    (async () => {
      const response = await fetch(url);
      const result = await response.json();
      setProducts(result.body);
    })();
  }, []);

  // const moveSlide = (distance, nextIndex) => {
  //   slides.current.style.transition = `${speed}ms`;
  //   slides.current.style.transform = `translateX(${distance}px)`;
  //   setX(distance);
  //   setCurrentIndex(nextIndex);
  // };

  // const moveSlidesWithDirection = (direction) => {
  //   const remainSlideCount = direct[direction] > 0 ? currentIndex - slideCount : products.length - currentIndex;
  //   let distance;
  //   let nextIndex;

  //   if (remainSlideCount >= slideCount) {
  //     distance = currentX + totalWidth * direct[direction];
  //     nextIndex = currentIndex - slideCount * direct[direction];
  //   } else {
  //     distance = currentX + slideWidth * direct[direction] * remainSlideCount;
  //     nextIndex = currentX - remainSlideCount * direct[direction];
  //   }

  //   moveSlide(distance, nextIndex);

  //   if (direction === "RIGHT") {
  //     distance && setRightDisabled(false);
  //     nextIndex >= products.length && setLeftDisabled(true);
  //   }
  //   if (direction === "LEFT") {
  //     !distance && setRightDisabled(true);
  //     nextIndex < products.length && setLeftDisabled(false);
  //   }
  // };

  // const moveRight = () => {
  //   const remainSlideCount = products.length - currentIndex;
  //   const distance = remainSlideCount >= slideCount ? currentX - totalWidth : currentX - slideWidth * remainSlideCount;
  //   const nextIndex = remainSlideCount >= slideCount ? currentIndex + slideCount : currentIndex + remainSlideCount;
  //   moveSlide(300, distance, nextIndex);
  //   distance && setRightDisabled(false);
  //   nextIndex >= products.length && setLeftDisabled(true);
  // };

  // const moveLeft = () => {
  //   const remainSlideCount = currentIndex - slideCount;
  //   const distance = remainSlideCount >= slideCount ? currentX + totalWidth : currentX + slideWidth * remainSlideCount;
  //   // let distance;
  //   // if (remainSlideCount >= slideCount) distance = currentX + totalWidth;
  //   // else distance = currentX + slideWidth * remainSlideCount;
  //   const nextIndex = remainSlideCount >= slideCount ? currentIndex - slideCount : currentIndex - remainSlideCount;
  //   moveSlide(300, distance, nextIndex);
  //   !distance && setRightDisabled(true);
  //   nextIndex < products.length && setLeftDisabled(false);
  // };

  return (
    <SectionContainer>
      <SectionBox>
        <SectionTitle>{title}</SectionTitle>
        <JennyCarousel BUTTON_SIZE={35}>
          {products.map((product) => (
            <Card
              key={product.detail_hash}
              product={product}
              cardSize={(props) => props.theme.cardSizes.M}
              margin={5} // 원래 8이었음
              // onModal={onModal}
            />
          ))}
        </JennyCarousel>
      </SectionBox>
      {/* <SectionContent> */}
      {/* <CardList ref={slides}>
            {products.map((product) => (
              <Card
                key={product.detail_hash}
                product={product}
                cardSize={(props) => props.theme.cardSizes.M}
                margin={8}
                // onModal={onModal}
              />
            ))}
          </CardList> */}
      {/* </SectionContent> */}
      {/* <SectionButton>
        <IconButton type="LEFT" fn={() => moveSlidesWithDirection("LEFT")} disabled={leftDisabled} />
        <IconButton type="RIGHT" fn={() => moveSlidesWithDirection("RIGHT")} disabled={rightDisabled} />
      </SectionButton> */}
    </SectionContainer>
  );
};

const SectionContainer = styled(CenterContainer)`
  flex-direction: column;
  position: relative;
  margin: 30px 0;
  // border: 1px solid blue;
`;

const SectionBox = styled.div`
  // border: 1px solid violet;
  width: 1500px;
`;

const SectionContent = styled.div`
  position: relative;
  display: flex;
  margin: 20px 0;
  width: 1296px; /* 원래 1280 */
  height: 500px;
  /*border: 1px solid black;*/
  overflow: hidden;
`;

const CardList = styled(CenterContainer)`
  list-style: none;
  align-items: start;
  position: absolute;
`;

const SectionTitle = styled.div`
  font-size: ${(props) => props.theme.fontSizes.XL};
  font-weight: bold;
  color: ${(props) => props.theme.darkGray};
  margin: 20px 5em;
`;

const SectionButton = styled.div`
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  width: 100%;
  display: flex;
  justify-content: space-between;
`;

export default CarouselSection;
