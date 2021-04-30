import styled from "styled-components";

const ShowMoreBtnStyle = styled.div`
  margin: 0 -4rem;
  font-size: 1.125rem;
  font-weight: 600;
  padding: 2.321225rem;
  text-align: center;
  background-color: #F5F5F7;
  box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.05);
  cursor: pointer;
  display: ${props => props.active ? 'none' : 'block'};
`;

export default function ShowMoreBtn({ active, onShowMoreItems }) {
  return <ShowMoreBtnStyle active={active} onClick={onShowMoreItems}>모든 카테고리 보기</ShowMoreBtnStyle>;
}