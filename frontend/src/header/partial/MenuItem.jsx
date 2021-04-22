import { useState } from "react";
import styled from "styled-components";
import MenuItemDropdown from "./MenuItemDropdown";

const MenuItem = ({ children, dropdownData, ...props }) => {
  const [dropdownVisible, setDropdownVisible] = useState(false);
  const handleMouseEnter = () => setDropdownVisible(true);
  const handleMouseLeave = () => setDropdownVisible(false);

  return (
    <StyledMenuItem
      {...props}
      onMouseEnter={handleMouseEnter}
      onMouseLeave={handleMouseLeave}
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

// --- Styled Components ---
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
    hoverState ? theme.fontWeight.bold2 : theme.fontWeight.normal};

  color: ${({ theme }) => theme.colors.gray1};
  font-family: ${({ theme }) => theme.fontFamily};
  font-size: ${({ theme }) => theme.fontSize.M};
  cursor: pointer;

  &:hover {
    font-weight: ${({ theme }) => theme.fontWeight.bold2};
  }
`;