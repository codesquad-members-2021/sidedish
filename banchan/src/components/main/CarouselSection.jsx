import { useEffect, useRef, useState } from "react";
// import mockData from "../utils/mockData.js";
import Card from "../utils/Card";
import styled from "styled-components";
import IconButton from "../utils/button/IconButton";
import { CenterContainer } from "../utils/styles/common";

const CarouselSection = ({ key, url, title }) => {
  const [products, setProducts] = useState([]);
  // const [products, setProducts] = useState(mockData);
  const [currentX, setX] = useState(0);
  const [currentIndex, setCurrentIndex] = useState(4);
  const [leftDisabled, setLeftDisabled] = useState(false);
  const [rightDisabled, setRightDisabled] = useState(true);
  const slides = useRef();
  const slideCount = 4;
  const slideWidth = 320;
  const totalWidth = 320 * slideCount + 16;

  useEffect(() => {
    (async () => {
      const response = await fetch(url);
      const result = await response.json();
      setProducts(result.body);
    })();
  }, []);

  const moveSlide = (speed, distance, nextIndex) => {
    slides.current.style.transition = `${speed}ms`;
    slides.current.style.transform = `translateX(${distance}px)`;
    setX(distance);
    setCurrentIndex(nextIndex);
  };

  const moveLeft = () => {
    const remainSlideCount = products.length - currentIndex;
    const distance = remainSlideCount >= slideCount ? currentX - totalWidth : currentX - slideWidth * remainSlideCount;
    const nextIndex = remainSlideCount >= slideCount ? currentIndex + slideCount : currentIndex + remainSlideCount;
    moveSlide(300, distance, nextIndex);
    distance && setRightDisabled(false);
    nextIndex >= products.length && setLeftDisabled(true);
  };

  const moveRight = () => {
    const remainSlideCount = currentIndex - slideCount;
    const distance = remainSlideCount >= slideCount ? currentX + totalWidth : currentX + slideWidth * remainSlideCount;
    const nextIndex = remainSlideCount >= slideCount ? currentIndex - slideCount : currentIndex - remainSlideCount;
    moveSlide(300, distance, nextIndex);
    !distance && setRightDisabled(true);
    nextIndex < products.length && setLeftDisabled(false);
  };

  return (
    <SectionContainer>
      <SectionBox>
        <SectionTitle>{title}</SectionTitle>
        <SectionContent>
          <CardList ref={slides}>
            {products.map((product) => (
              <Card
                key={product.detail_hash}
                product={product}
                cardSize={(props) => props.theme.cardSizes.M}
                marginRight="16px"
              />
            ))}
          </CardList>
        </SectionContent>
      </SectionBox>
      <SectionButton>
        <IconButton type="LEFT" fn={moveLeft} disabled={leftDisabled} />
        <IconButton type="RIGHT" fn={moveRight} disabled={rightDisabled} />
      </SectionButton>
    </SectionContainer>
  );
};

const SectionContainer = styled(CenterContainer)`
  position: relative;
  margin: 30px 0;
  /*border: 1px solid blue;*/
  width: 1320px;
`;

const SectionBox = styled.div`
  /*border: 1px solid violet;*/
  /* 사실상 배치를 위한 컴포넌트인데 그냥 이렇게 쓰는게 좋을지 아니면 <div></div>로 하는게 좋을지.. 통일감은 이게 나은거 같긴 한데..*/
`;

const SectionContent = styled.div`
  position: relative;
  display: flex;
  margin: 20px 0;
  width: 1280px;
  height: 460px;
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
  color: ${(props) => props.theme.darkGray}
  margin: 20px 0;
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
