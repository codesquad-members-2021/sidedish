import styled from 'styled-components';
import { v4 as uuidv4 } from 'uuid';

const Dropdown = ({ subMenu }) => {
  return (
    <DropdownUl>
      {subMenu.map((menu) => (
        <li key={uuidv4()}>
          <span>{menu}</span>
        </li>
      ))}
    </DropdownUl>
  );
};

export default Dropdown;

const DropdownUl = styled.ul`
  width: 100%;
  padding: 1rem 0;
  position: absolute;

  li {
    margin: 0.5rem 0;
    width: 80px;
    height: 23px;
  }

  span {
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: normal;
    font-size: 1rem;
    color: #828282;

    &:hover {
      text-decoration-line: underline;
      color: #333333;
    }
  }
`;
