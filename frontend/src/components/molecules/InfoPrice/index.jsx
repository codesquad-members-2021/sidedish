import React from 'react';
import styled from 'styled-components';
import Span from '../../atoms/Span';

const PriceWrapper = styled.div`
  display: flex;
  justify-content: flex-end;
  align-items: center;
  padding: 0px;

  width: 227px;
  height: 46px;
`;

const InfoPrice = ({ children, ...props }) => {
  return (
    <PriceWrapper>
      <Span _color="#828282" _font-size="18px" _font-weight="700">
        총 주문금액
      </Span>
      <Span _color="#010101" _font-size="32px" _font-weight="700">
        {props.s_price}
      </Span>
    </PriceWrapper>
  );
};

export default InfoPrice;
