import styled from "styled-components";
import { useState } from "react";
import { theme, AlignTextCenter } from "./Theme";
// import DeliveryMsg from "./DeliveryMsg";

const Card = styled.div`
  margin-top: 40px;
  width: ${(props) => {
    return props.size === "L" ? "384px" : "308px";
  }};
`;
const IMG = styled.img`
  width: ${props => {
    return props.size === 'L' ? '384px' : '308px'
  }};
  height: ${props => {
    return props.size === 'L' ? '384px' : '308px'
  }};
  margin-bottom: 32px;
  filter: ${(props) => {
    return props.hoverState ? "brightness(50%)" : "brightness(100%)";
  }};
`;
const ItemTitle = styled.div`
  font-size: ${theme.fontSize.medium};
  font-weight: Bold;
  margin-bottom: 16px;
`;
const ItemDesc = styled.div`
  font-size: ${theme.fontSize.small};
  color: ${theme.colors.grey_text};
  margin-bottom: 16px;
`;
const ItemPrice = styled.span`
  font-size: ${theme.fontSize.price};
  font-weight: Bold;
  margin-right: 10px;
`;
const ItemPriceNormal = styled.span`
  text-decoration: line-through;
  color: ${theme.colors.grey_text};
`;
const Badge = styled(AlignTextCenter)`
  width: 97px;
  height: 28px;
  margin-top: 20px;
  background-color: ${theme.colors.green};
  color: ${theme.colors.white};
  font-weight: Bold;
  font-size: ${theme.fontSize.small};
  border-radius: 10px;
`;

function ItemCard({ data, size }) {
  const [hoverState, setHoverState] = useState(false);
  const handleMouseHover = () => {
    setHoverState(!hoverState);
  };
  return (
    <>
      <Card
        size={size}
        onMouseEnter={handleMouseHover}
        onMouseLeave={handleMouseHover}
      >
        <IMG
          size={size}
          hoverState={hoverState}
          src={data.image}
          alt={data.alt}
        />
        {/* <DeliveryMsg /> */}

        <ItemTitle>{data.alt}</ItemTitle>
        <ItemDesc>{data.description}</ItemDesc>
        <ItemPrice>{data.s_price ? data.s_price : data.p_price}</ItemPrice>
        <ItemPriceNormal>{data.s_price && data.n_price}원</ItemPriceNormal>
        {data.badge && <Badge>{data.badge}</Badge>}
      </Card>
    </>
  );
}

export default ItemCard
