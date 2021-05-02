import React from 'react';
import styled from 'styled-components';
import SpecialLabelTag from 'Components/commons/SpecialLabelTag';
import { formatPriceAsNumber } from 'util/serviceUtils';

const Prices = ({ badges, salePrice, normalPrice }) => {
  return (
    <PriceWrapper>
      {badges?.slice(1, -1).split(', ').map((badge, idx) => {
        return (<SpecialLabelTag key={`modalSpacialLabel-${idx}`} badge={badge} />);
      })}
      {salePrice !== normalPrice
        ? <><SalePriceSpan>{formatPriceAsNumber(salePrice)}</SalePriceSpan>
          <NetPriceSpan>{formatPriceAsNumber(normalPrice)}</NetPriceSpan></>
        : <SalePriceSpan>{formatPriceAsNumber(normalPrice)}</SalePriceSpan>
      }
    </PriceWrapper>
  );
};

const SalePriceSpan = styled.span`
  margin: 0 8px 0 0;
  color: #333333;
  font-size: 24px;
  font-weight: 700;
  line-height: 35px;
  &::after{
    content:"원";
  }
`;

const NetPriceSpan = styled.span`
  color: #828282;
  text-decoration: line-through;
  line-height: 23px;
  &::after{
    content:"원";
  }
`;

const PriceWrapper = styled.div`
  margin: 0 0 24px 0;
`;


export default Prices;
