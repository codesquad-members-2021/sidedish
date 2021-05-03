import React from "react";
import styled from "styled-components";

const StyledImage = styled.img`
  width: ${(props) => props._width};
  height: ${(props) => props._height};
  margin: ${(props) => props._margin};
  border-radius: 5px;
  display: relative;
  cursor: pointer;
`;

const Image = ({ src, ...props }) => <StyledImage src={src} {...props} />;

export default Image;
