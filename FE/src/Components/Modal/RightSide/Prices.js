import React from 'react';
import styled from 'styled-components';
import SpecialLabelTag from 'Components/commons/SpecialLabelTag';
import { formatPriceAsNumber } from 'util/serviceUtils';

const Prices = ({ badge, prices }) => {
  return (
    <PriceWrapper>
      {badge?.map((badge, idx) => {
        return (<SpecialLabelTag key={idx} badge={badge} />);
      })}
      {prices?.length === 1 &&
        <SalePriceSpan>{formatPriceAsNumber(prices[0])}</SalePriceSpan>
      }
      {prices?.length === 2 &&
        <><SalePriceSpan>{formatPriceAsNumber(prices[1])}</SalePriceSpan>
          <NetPriceSpan>{formatPriceAsNumber(prices[0])}</NetPriceSpan></>
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
