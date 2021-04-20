import React from "react";
import styled from "styled-components";

const StyledLogo = styled.div`
  color: ${({ theme }) => theme.colors.black};
  font-family: ${({ theme }) => theme.fontFamily};
  font-weight: ${({ theme }) => theme.fontWeight.bold};
  font-size: ${({ theme }) => theme.fontSize.xxl};
  letter-spacing: -0.04em;
  text-transform: uppercase;
`;

const Logo = ({ children }) => {
  return <StyledLogo>{children}</StyledLogo>;
};

export default Logo;
