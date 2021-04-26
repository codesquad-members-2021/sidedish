import React, { useEffect, useState } from 'react';
import styled from 'styled-components';
import SpecialLabelTag from '../../commons/SpecialLabelTag';
import CountSelector from './CountSelector';
import Sum from './Sum';
import OrderButton from './OrderButton';

const RightSide = ({ prices, product_description, point, delivery_info, delivery_fee }) => {
  const [count, setCount] = useState(0);
  const handleChangeCount = (number) => () => {
    setCount(count + number);
  };

  useEffect(() => {
    setCount(0); // 모달 새로 띄우면 카운트 0으로 초기화
  }, [prices])

  return (
    <RightSideWrapper>
      <TitleDiv>[미노리키친] 규동 250g</TitleDiv>
      <DescriptionDiv>{product_description}</DescriptionDiv>
      <PriceWrapper>
        <SpecialLabelTag event />
        {prices && prices.length === 1 ? (
          <SalePriceSpan>{prices[0]}</SalePriceSpan>
        ) : (
          <><SalePriceSpan>{prices[0]}</SalePriceSpan> <NetPriceSpan>{prices[1]}</NetPriceSpan></>
        )}
      </PriceWrapper>

      <DivisionHr />

      <AdditionalInfoWrapper>
        <AdditionalInfoTitle >적립금</AdditionalInfoTitle>
        <AdditionalInfoDesc >
          {(Number(point.match(/\d/g).join('')) * count)}
          {point.match(/\D/)}
        </AdditionalInfoDesc>
      </AdditionalInfoWrapper>

      <AdditionalInfoWrapper>
        <AdditionalInfoTitle>배송정보</AdditionalInfoTitle>
        <AdditionalInfoDesc >{delivery_info}</AdditionalInfoDesc>
      </AdditionalInfoWrapper>

      <AdditionalInfoWrapper>
        <AdditionalInfoTitle>배송비</AdditionalInfoTitle>
        <AdditionalInfoDesc >{delivery_fee}</AdditionalInfoDesc>
      </AdditionalInfoWrapper>

      <DivisionHr topMargin="8" />

      <AdditionalInfoWrapper align="center" justify="space-between">
        <AdditionalInfo fontColor="#828282">수량</AdditionalInfo>
        <CountSelector {...{ count, handleChangeCount }} />
      </AdditionalInfoWrapper>

      <DivisionHr topMargin="24" />
      <Sum sumPrice={prices[0].match(/\d/g).join('') * count} />
      <OrderButton />

    </RightSideWrapper>
  );
};

const RightSideWrapper = styled.div`
  width: 440px;
  height: 100%;
`;

const TitleDiv = styled.div`
  margin: 0 0 16px 0;
  font-size: 24px;
  font-weight: 700;
  line-height: 35px;
`;

const DescriptionDiv = styled.div`
  margin: 0 0 16px 0;
  font-size: 18px;
  color: #828282;
  line-height: 26px;
`;

const SalePriceSpan = styled.span`
  margin: 0 8px 0 0;
  color: #333333;
  font-size: 24px;
  font-weight: 700;
  line-height: 35px;
  /* &::after{
    content:"원";
  } */
`;

const NetPriceSpan = styled.span`
  color: #828282;
  text-decoration: line-through;
  line-height: 23px;
  /* &::after{
    content:"원";
  } */
`;

const PriceWrapper = styled.div`
  margin: 0 0 24px 0;
`;

const DivisionHr = styled.hr`
  margin-bottom: 24px;
  border-top: 1px solid #E0E0E0;
  margin-top: ${({ topMargin }) => topMargin}px;
`;

const AdditionalInfoWrapper = styled.div`
  display: flex;
  margin: 0 0 16px 0;
  place-items: ${({ align }) => align};
  justify-content: ${({ justify }) => justify};
`;

const AdditionalInfo = styled.div`
  margin-right: ${({ rightMargin }) => rightMargin}px;
  color: ${({ fontColor }) => fontColor};
  line-height: 23px;
  min-width: 59px;
  font-weight: ${({ weight }) => weight};
`;

const AdditionalInfoTitle = styled(AdditionalInfo)`
  margin-right: 16px;
  color:#828282;
`;

const AdditionalInfoDesc = styled(AdditionalInfo)`
  color:#4F4F4F;
`;


export default RightSide;