import styled from "styled-components";

const BestTabNavigatorStyle = styled.div`
  display: grid;
  grid-gap: 0.5rem;
  grid-template-columns: repeat(5, 13rem);
`;

const BestTabNavigatorItemStyle = styled.div`
  font-size: 1.125rem;
  background-color: ${(props) => (props.active ? "#EEF4FA" : "#F5F5F5")};
  padding: 1rem 2rem;
  text-align: center;
  font-weight: ${(props) => (props.active ? 600 : 400)};
  color: ${(props) => (props.active ? "#333" : "#828282")};
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
          active={i === active}
        >
          {bestItem.title}
        </BestTabNavigatorItemStyle>
      ))}
    </BestTabNavigatorStyle>
  );
}
