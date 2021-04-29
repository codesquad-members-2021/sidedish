import React from 'react';
import styled from 'styled-components';

const StyledSpan = styled.span`
  display: block;
  color: ${props => props._color};
  margin: ${props => props._margin};
  font-size: ${props => props._fontSize};
  font-weight: ${props => props._fontWeight};
  font-family: 'Noto Sans KR';

  &._title {
    margin: 16px 0 0 0;
    font-size: 16px;
    font-weight: 400;
    color: #333;
  }

  &._description {
    margin: 8px 0;
    font-size: 14px;
    font-weight: 400;
    color: #828282;
  }

  &._sPrice {
    font-size: 20px;
    font-weight: 700;
    color: #010101;
  }

  &._nPrice {
    margin: 9px 0 0 8px;
    font-size: 14px;
    font-weight: 400;
    color: #bdbdbd;
    text-decoration: line-through;
  }

  &._logo {
    font-size: 40px;
    font-weight: 900;
    color: #333;
  }

  &._tabDeact {
    font-size: 18px;
    font-weight: 400;
    color: #828282;
  }
  &._tabAct {
    font-size: 18px;
    font-weight: 700;
    color: #333;
  }
  &._login {
    font-size: 16px;
    font-weight: 400;
    color: #333;
  }

  &._innerTitle {
    font-size: 24px;
    font-weight: 700;
  }

  &._detailLabel {
    font-size: 16px;
    font-weight: 400;
    color: #828282;
  }

  &._detailText {
    font-size: 16px;
    font-weight: 400;
    color: #4f4f4f;
  }

  &._hoverTitle {
    font-size: 24px;
    font-weight: 700;
    color: #ffffff;
  }
  &._headMenuDeact {
    margin: 16px 0 0 0;
    font-size: 16px;
    font-weight: 400;
    color: #333;
  }
  &._headMenuAct {
    margin: 16px 0 0 0;
    font-size: 16px;
    font-weight: 700;
    color: #333;
  }
  &._dropDeact {
    margin-bottom: 8px;
    font-size: 16px;
    font-weight: 400;
    color: #828282;
  }
  &._otherPrice {
    font-weight: 700;
    font-size: 14px;
    color: #333;
  }
`;

const Span = ({ children, ...props }) => (
  <StyledSpan {...props}>{children}</StyledSpan>
);

export default Span;
