import React from 'react';
import styled from 'styled-components';
import SpecialLabelTag from '../../commons/SpecialLabelTag';
import CountSelector from './CountSelector';
import Sum from './Sum';
import OrderButton from './OrderButton';

const RightSide = () => {
  return (
    <RightSideWrapper>
      <TitleDiv>[미노리키친] 규동 250g</TitleDiv>
      <DescriptionDiv>일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥</DescriptionDiv>
      <PriceWrapper>
        <SpecialLabelTag event />
        <SalePriceSpan>5200</SalePriceSpan>
        <NetPriceSpan>6500</NetPriceSpan>
      </PriceWrapper>

      <DivisionHr />

      <AdditionalInfoWrapper>
        <AdditionalInfo fontColor="#828282" rightMargin="16">적립금</AdditionalInfo>
        <AdditionalInfo fontColor="#4F4F4F">52원</AdditionalInfo>
      </AdditionalInfoWrapper>

      <AdditionalInfoWrapper>
        <AdditionalInfo fontColor="#828282" rightMargin="16">배송정보</AdditionalInfo>
        <AdditionalInfo fontColor="#4F4F4F">서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)
        [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다</AdditionalInfo>
      </AdditionalInfoWrapper>

      <AdditionalInfoWrapper>
        <AdditionalInfo fontColor="#828282" rightMargin="16">배송비</AdditionalInfo>
        <AdditionalInfo fontColor="#4F4F4F">2500원</AdditionalInfo>
        <AdditionalInfo fontColor="#4F4F4F" weight="700" >(40,000원 이상 구매 시 무료)</AdditionalInfo>
      </AdditionalInfoWrapper>

      <DivisionHr topMargin="8" />

      <AdditionalInfoWrapper align="center" justify="space-between">
        <AdditionalInfo fontColor="#828282">수량</AdditionalInfo>
        <CountSelector />
      </AdditionalInfoWrapper>

      <DivisionHr topMargin="24" />
      <Sum />
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

export default RightSide;