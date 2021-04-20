import React from "react";
import styled from "styled-components";

const StyledMenuItem = styled.div`
  flex: none;
  order: ${({ flexOrder }) => flexOrder};
  flex-grow: 0;

  & + & {
    margin-left: 24px;
  }
`;

const TextItem = styled.span`   // anchor 태그 쓸일 없음
  color: ${({ theme }) => theme.colors.black};
  font-family: ${({ theme }) => theme.fontFamily};
  font-size: ${({ theme }) => theme.fontSize.m};
  cursor: pointer;

  &:hover {
    font-weight: ${({ theme }) => theme.fontWeight.bold};
  }
`;

const MenuItem = ({ children, dropdown, ...props }) => {
  return (
    <StyledMenuItem {...props} >
      <TextItem>{children}</TextItem>
      {dropdown && dropdown}
    </StyledMenuItem>
  );
};

export default MenuItem;
