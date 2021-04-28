import React, { useEffect, useState } from 'react';
import styled from 'styled-components';
import CountSelector from 'Components/Modal/RightSide/CountSelector';
import Sum from 'Components/Modal/RightSide/Sum';
import OrderButton from 'Components/Modal/RightSide/OrderButton';
import Prices from 'Components/Modal/RightSide/Prices';
import { formatPriceAsNumber } from 'util/serviceUtils';

const RightSide = ({ prices, product_description, point, delivery_info, delivery_fee, title, badge }) => {
  const [count, setCount] = useState(0);
  const handleChangeCount = (number) => () => {
    setCount(count + number);
  };

  useEffect(() => {
    setCount(0); // 모달 새로 띄우면 카운트 0으로 초기화
  }, [prices])

  const additionalInfo = [
    { title: '적립금', desc: `${formatPriceAsNumber(point)}원` },
    { title: '배송정보', desc: delivery_info },
    { title: '배송비', desc: delivery_fee }
  ];

  return (
    <RightSideWrapper>
      <TitleDiv>{title}</TitleDiv>
      <DescriptionDiv>{product_description}</DescriptionDiv>
      <Prices {...{ badge, prices }} />

      <DivisionHr />

      {additionalInfo.map(({ title, desc }, idx) => {
        return (
          <AdditionalInfoWrapper key={idx}>
            <AdditionalInfoTitle>{title}</AdditionalInfoTitle>
            <AdditionalInfoDesc>{desc}</AdditionalInfoDesc>
          </AdditionalInfoWrapper>
        );
      })}

      <DivisionHr topMargin="8" />

      <AdditionalInfoWrapper align="center" justify="space-between">
        <AdditionalInfo fontColor="#828282">수량</AdditionalInfo>
        <CountSelector {...{ count, handleChangeCount }} />
      </AdditionalInfoWrapper>

      <DivisionHr topMargin="24" />
      <Sum sumPrice={prices[1]
        ? formatPriceAsNumber(prices[1], count)
        : formatPriceAsNumber(prices[0], count)} />
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