import { useState } from 'react';
import styled from 'styled-components';
import Dropdown from 'components/nav/Dropdown';

const Menu = ({ title, subMenu }) => {
  const [isHovering, setIsHovering] = useState(false);

  const handleMouseEnter = () => {
    setIsHovering(true);
  };

  const handleMouseLeave = () => {
    setIsHovering(false);
  };

  return (
    <MenuLi onMouseEnter={handleMouseEnter} onMouseLeave={handleMouseLeave}>
      <span>{title}</span>
      {isHovering && <Dropdown subMenu={subMenu} />}
    </MenuLi>
  );
};

export default Menu;

const MenuLi = styled.li`
  margin-right: 2rem;
  width: 107px;
  height: 130%;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: normal;
  font-size: 1rem;
  color: #333333;
  cursor: pointer;
  position: relative;
  display: flex;
  align-items: center;

  &:hover {
    font-weight: bold;
  }
`;
