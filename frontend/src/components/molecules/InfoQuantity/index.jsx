import React, { useState } from "react";
import styled from "styled-components";
import Span from "../../atoms/Span";
import Icon from "../../atoms/Icon";

const Input = styled.input`
  display: flex;
  align-items: flex-start;
  padding: 8px 24px;
  width: 57px;
  height: 41px;
  border: 1px solid #e0e0e0;
`;
const QuantityWrapper = styled.div`
  display: flex;
`;
const TitleWrapper = styled.div`
  display: flex;
`;
const ContentWrapper = styled.div`
  display: flex;
`;
const IconWrapper = styled.div`
  display: flex;
  flex-direction: column;
`;
const NumWrapper = styled.div`
  width: 57px;
  height: 41px;
  padding: 8px 24px;
  border: 1px solid #e0e0e0;
  font-weight: 400;
  font-size: 16px;
  color: #333;
`;

const InfoQuantity = ({ children, ...props }) => {
  const [number, setNumber] = useState(1);

  const upQuantity = () => {
    setNumber(number + 1);
  };
  const downQuantity = () => {
    if (number <= 0) setNumber(0);
    else setNumber(number - 1);
  };
  return (
    <QuantityWrapper>
      <TitleWrapper>
        <Span className="_detailLabel">수량</Span>
      </TitleWrapper>
      <ContentWrapper>
        <NumWrapper>{number}</NumWrapper>
        <IconWrapper>
          <Icon
            upQuantity={upQuantity}
            _width="6px"
            _heith="3px"
            _color="#E0E0E0"
            _type="UpIcon"
          />
          <Icon
            downQuantity={downQuantity}
            _width="6px"
            _heith="3px"
            _color="#E0E0E0"
            _type="DownIcon"
          />
        </IconWrapper>
      </ContentWrapper>
    </QuantityWrapper>
  );
};

export default InfoQuantity;
