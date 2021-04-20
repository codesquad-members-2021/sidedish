import styled from 'styled-components';

const Menu = () => {
  return (
    <MenuContainer>
      <span>든든한 메인요리</span>
      <span>뜨끈한 국물요리</span>
      <span>정갈한 밑반찬</span>
    </MenuContainer>
  );
};

export default Menu;

const MenuContainer = styled.div`
  padding-left: 1.5rem;
  display: flex;
  align-items: center;

  span {
    margin-right: 2rem;
    width: 107px;
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: bold;
    font-size: 1rem;
    color: #333333;
  }
`;
