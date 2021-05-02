import styled from "styled-components";

const BestTabNavigatorStyle = styled.div`
  display: grid;
  grid-gap: 0.5rem;
  grid-template-columns: repeat(5,13rem);
`;

const BestTabNavigatorItemStyle = styled.div.attrs(props => ({
  weight: props.active ? 600 : 400,
  color: props.active ? "#333" : "#828282"
}))`
  font-size: 1.125rem;
  background-color: #EEF4FA;
  padding: 1rem 2rem;
  text-align: center;
  font-weight: ${(props) => props.weight};
  color: ${(props) => props.color};
  cursor: pointer;
  &:hover {
    color: #333;
  }
`;

export default function BestTabNavigator({ bestItems, active, setActive }) {
  return (
    <BestTabNavigatorStyle>
      {bestItems.map((bestItem, i) => (
        <BestTabNavigatorItemStyle 
          key={i}
          onClick={() => setActive(i)} 
          active={(i === active)}>{bestItem.title}
        </BestTabNavigatorItemStyle>
      ))}
      {/*
      <BestTabNavigatorItemStyle>풍성한 고기반찬</BestTabNavigatorItemStyle>
      <BestTabNavigatorItemStyle>편리한 반찬세트</BestTabNavigatorItemStyle>
      <BestTabNavigatorItemStyle>간편한 덮밥요리</BestTabNavigatorItemStyle>
      <BestTabNavigatorItemStyle>우리아이 영양반찬</BestTabNavigatorItemStyle> */}
    </BestTabNavigatorStyle>
  )
}