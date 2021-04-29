import React from "react";
import styled from "styled-components";

const StyledTag = styled.button`
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 12px 10px 0 0;
  padding: 4px 16px;
  border-radius: 5px;

  &._event {
    width: 97px;
    height: 28px;
    background: #82d32d;
  }

  &._new {
    width: 84px;
    height: 28px;
    background: #86c6ff;
  }
  &._best {
    width: 84px;
    height: 28px;
    background: #fccd40;
  }
`;

const StyledTagSpan = styled.span`
  font-weight: bold;
  font-size: 14px;
  line-height: 20px;

  color: #ffffff;

  flex: none;
  margin: 0px 10px;
`;

const Tag = ({ children, ...props }) => {
  return (
    <StyledTag {...props}>
      <StyledTagSpan>{children}</StyledTagSpan>
    </StyledTag>
  );
};

export default Tag;
