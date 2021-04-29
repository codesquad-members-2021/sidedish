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
  top: 50px;
  left: 0;
  background: #ffffff;
  box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
    0px 2px 4px rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(4px);
  transition: all ease-in-out 0.4s;

  li {
    margin: 0.5rem 0.3rem;
    width: 100%;
    padding-left: 0.5rem;
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
