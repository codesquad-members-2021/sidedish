import React from 'react';
import styled from 'styled-components';

const Dropdown = ({ list }) => {
  return (
    <DropdownWrapper>
      <MenuList>
        {list.map((text, index) => {
          return <MenuItem key={index}>{text}</MenuItem>;
        })}
      </MenuList>
    </DropdownWrapper>
  );
};

const DropdownWrapper = styled.div`
  display: none;
  place-content: center;
`;

const MenuList = styled.ul`
  position: absolute;
  margin: auto;
  padding: 8px 16px;
  box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25);
`;

const MenuItem = styled.li`
  color:#828282;
  margin: 5px 0;
  line-height: 23px;
  &:hover{
    color: #000;
    text-decoration-line: underline;
    cursor:pointer;
  }
`;

export default Dropdown;