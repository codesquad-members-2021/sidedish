import { useEffect, useState } from 'react';
import styled from 'styled-components';
import Card from '../utils/Card';
import theme from '../utils/styles/theme';

const CarouselList = (props) => {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    fetch(
      'https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main'
    )
      .then((response) => response.json())
      .then((result) => setProducts(result.body))
      .then((error) => console.log('error', error));
  }, []);

  return (
    <StyledUl>
      {products.map((product) => (
        <Card
          key={product.detail_hash}
          product={product}
          cardSize={theme.cardSizes.M}
        />
      ))}
    </StyledUl>
  );
};

const StyledUl = styled.ul`
  display: flex;
  justify-content: space-evenly;
`;

export default CarouselList;
