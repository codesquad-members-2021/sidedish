import React from 'react';
import styled from 'styled-components';

const StyledButton = styled.button`
  display: flex;
  flex-direction: row;
  align-items: flex-start;
  padding: 16px;

  width: 440px;
  height: 58px;

  border-radius: 5px;

  ${props =>
    props.deactive &&
    `background: #E0E0E0;

    `}
`;
// props.default &&
//   `
//   background: #82d32d;

//   box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
//     0px 2px 4px rgba(0, 0, 0, 0.25);
//   backdrop-filter: blur(4px);

const Button = ({ children, ...props }) => {
  return <StyledButton {...props}>{children}</StyledButton>;
};

export default Button;
