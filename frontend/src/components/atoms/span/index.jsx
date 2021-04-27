import React from 'react';
import styled from 'styled-components';

const StyledSpan = styled.span`
  display: block;
  color: ${props => props._color};
  margin: ${props => props._margin};
  font-size: ${props => props._fontSize};
  font-weight: ${props => props._fontWeight};
  font-family: 'Noto Sans KR';
  ${props =>
    props._title &&
    `font-size:16px;
    font-weight:400;
    color:#333;
    margin:16px 0 0 0;`}

  ${props =>
    props._description &&
    `font-size:14px;
    font-weight:400;
    color:#828282;
    margin:8px 0;`}

  ${props =>
    props._sPrice &&
    `font-size:20px;
    font-weight:700;
    color:#010101;
    `}

  ${props =>
    props._nPrice &&
    `font-size:14px;
    font-weight:400;
    color:#BDBDBD;
    margin:9px 0 0 8px;
    text-decoration:line-through;`}

    ${props =>
    props._logo &&
    `font-size:40px;
    font-weight:900;
    color:#333;`}

     ${props =>
    props._tabDeact &&
    `font-size:18px;
    font-weight:400;
    color:#828282;

    `}
     ${props =>
    props._tabAct &&
    `font-size:18px;
    font-weight:700;
    color:#333;
    `}
    ${props =>
    props._login &&
    `font-size:16px;
    font-weight:400;
    color:#333;`}

    ${props =>
    props._innerTitle &&
    `font-size:24px;
    font-weight:700;;
    `}
    
    ${props =>
    props._detailLabel &&
    `font-size:16px;
    font-weight:400;
    color:#828282`}
    
    ${props =>
    props._detailText &&
    `font-size:16px;
    font-weight:400;
    color:#4F4F4F`};
`;

const Span = ({ children, ...props }) => (
  <StyledSpan {...props}>{children}</StyledSpan>
);

export default Span;
