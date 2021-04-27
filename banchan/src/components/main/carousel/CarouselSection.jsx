import { useEffect, useRef, useState } from 'react';
import styled from 'styled-components';
import Card from '../../componentUtils/card/Card';
import { CenterContainer } from '../../componentUtils/styles/common';
// import { mockData } from "../../../utils/mockData";
import JennyCarousel from 'reallyawesome-jennyrousel/dist/JennyCarousel';
// import theme from "../../utils/styles/theme";

const CarouselSection = ({ url, title }) => {
  const [products, setProducts] = useState([]);
  // const [products, setProducts] = useState(mockData);

  useEffect(() => {
    (async () => {
      const response = await fetch(url);
      const result = await response.json();
      setProducts(result.body);
    })();
  }, []);

  return (
    <SectionContainer>
      <SectionBox>
        <SectionTitle>{title}</SectionTitle>
        <JennyCarousel BUTTON_SIZE={35} NUM_OF_DATAS={products.length}>
          {products.map((product) => (
            <Card
              key={product.detail_hash}
              product={product}
              cardSize={(props) => props.theme.cardSizes.M}
              margin={5}
            />
          ))}
        </JennyCarousel>
      </SectionBox>
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

const SectionTitle = styled.div`
  font-size: ${(props) => props.theme.fontSizes.XL};
  font-weight: bold;
  color: ${(props) => props.theme.darkGray};
  margin: 20px 5em;
`;

export default CarouselSection;
