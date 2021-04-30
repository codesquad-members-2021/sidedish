import React from "react";
import styled from "styled-components";

const StyledButton = styled.button`
  display: flex;
  flex-direction: row;
  align-items: flex-start;
  width: 440px;
  height: 58px;
  margin-top: 42px;
  padding: 16px;
  border-radius: 5px;
  cursor: pointer;
  :hover {
    box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
      0px 2px 4px rgba(0, 0, 0, 0.25);
  }

  ${(props) =>
    props._default &&
    `background: #82d32d;
    
  backdrop-filter: blur(4px);`}

  ${(props) => props._deactive && `background: #E0E0E0;`}
`;

const StyledButtonSpan = styled.span`
  width: 408px;
  height: 26px;

  font-weight: bold;
  font-size: 18px;
  line-height: 26px;

  text-align: center;
  margin: 0px 10px;

  color: ${(props) => (props._default ? "#FFFFFF" : "#BDBDBD")};
`;

const Button = (props) => {
  const text = props._default ? "주문하기" : "일시품절";
  return (
    <StyledButton {...props}>
      <StyledButtonSpan {...props}>{text}</StyledButtonSpan>
    </StyledButton>
  );
};

export default Button;
