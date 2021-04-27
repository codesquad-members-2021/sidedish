import React from "react";
import styled from "styled-components";

const StyledImage = styled.img`
  width: ${(props) => props._width};
  border-radius: 5px;
  display: relative;
`;

const Image = ({ src, ...props }) => <StyledImage src={src} {...props} />;

export default Image;
