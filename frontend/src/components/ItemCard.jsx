import styled from "styled-components";
import mokData from "./mokdata";

const Card = styled.div``;
const IMG = styled.img`
  width: ${(props) => {
    return props.size === "L" ? "384px" : "308px";
  }};
  height: ${(props) => {
    return props.size === "L" ? "384px" : "308px";
  }};
  margin-bottom: 16px;
`;
const ItemTitle = styled.p``;
const ItemDesc = styled.p``;
const ItemPrice = styled.p``;
const ItemPriceNormal = styled.p``;
const Badge = styled.p`
  color: red;
`;

function ItemCard() {
  return (
    <>
      {mokData.map((data) => (
        <Card size="L">
          <IMG size="L" src={data.image} alt={data.alt}></IMG>
          <ItemTitle>{data.alt}</ItemTitle>
          <ItemDesc>{data.description}</ItemDesc>
          <ItemPrice>{data.s_price ? data.s_price : data.p_price}</ItemPrice>
          <ItemPriceNormal>{data.s_price && data.n_price}원</ItemPriceNormal>
          {data.badge && <Badge>할인특가</Badge>}
        </Card>
      ))}
    </>
  );
}

export default ItemCard;
