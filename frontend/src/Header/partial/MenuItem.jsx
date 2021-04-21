import { useState } from "react";
import styled from "styled-components";
import MenuItemDropdown from "./MenuItemDropdown";

const StyledMenuItem = styled.div`
  flex: none;
  order: ${({ flexOrder }) => flexOrder};
  flex-grow: 0;

  position: relative;

  & + & {
    margin-left: 24px;
  }
`;

const TextItem = styled.span`
  // anchor 태그 쓸일 없음
  font-weight: ${({ hoverState, theme }) =>
    hoverState ? theme.fontWeight.bold : theme.fontWeight.normal};

  color: ${({ theme }) => theme.colors.black};
  font-family: ${({ theme }) => theme.fontFamily};
  font-size: ${({ theme }) => theme.fontSize.m};
  cursor: pointer;

  &:hover {
    font-weight: ${({ theme }) => theme.fontWeight.bold};
  }
`;

const MenuItem = ({ children, dropdownData, ...props }) => {
  const [dropdownVisible, setDropdownVisible] = useState(false);
  const dropdownMouseEnter = () => setDropdownVisible(true);
  const dropdownMouseLeave = () => setDropdownVisible(false);

  return (
    <StyledMenuItem
      {...props}
      onMouseEnter={dropdownMouseEnter}
      onMouseLeave={dropdownMouseLeave}
    >
      <TextItem hoverState={dropdownVisible}>{children}</TextItem>
      {dropdownData && (
        <MenuItemDropdown
          data={dropdownData}
          dropdownVisible={dropdownVisible}
        />
      )}
    </StyledMenuItem>
  );
};

export default MenuItem;
