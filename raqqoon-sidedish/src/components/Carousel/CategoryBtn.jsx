import styled from 'styled-components';

const CategoryButton = ({ onClick, isFolded }) => {
  return (
    <MoreBtn onClick={onClick}>
      <span>{isFolded ? '모든 카테고리 보기' : '접기'}</span>
    </MoreBtn>
  );
};

export default CategoryButton;

const MoreBtn = styled.button`
  height: 100px;
  width: 100%;
  outline: 0;
  border: 0;
  cursor: pointer;
  background: #f5f5f7;

  span {
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: bold;
    font-size: 18px;
    line-height: 26px;
    color: #333333;
  }
`;
