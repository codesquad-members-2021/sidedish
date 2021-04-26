import React from "react";
import styled from "styled-components";

const StyledTag = styled.button`
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 12px 0 0 0;
  padding: 4px 16px;

  border-radius: 5px;

  ${(props) =>
    props._event &&
    `width: 97px;
    height: 28px;
    margin-right: 10px;
    background: #82d32d;`}

  ${(props) =>
    props._new &&
    `width: 84px;
    height: 28px;
    margin-right: 10px;
    background: #86C6FF;`}
`;

const StyledTagSpan = styled.span`
  font-weight: bold;
  font-size: 14px;
  line-height: 20px;

  color: #ffffff;

  flex: none;
  margin: 0px 10px;
`;

const Tag = (props) => {
  const text = props._event ? "이벤트 특가" : "런칭특가";
  return (
    <StyledTag {...props}>
      <StyledTagSpan>{text}</StyledTagSpan>
    </StyledTag>
  );
};

export default Tag;
