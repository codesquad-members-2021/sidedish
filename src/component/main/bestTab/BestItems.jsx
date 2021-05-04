import styled from "styled-components";
import ItemCard from "../../util/ItemCard";

const BestItemsStyle = styled.div`
  background-color: #eef4fa;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-gap: 1.5rem;
  padding: 2.5rem;
`;

export default function BestItems({ childs }) {
  const getRandom = (n, max) => {
    const set = new Set();
    while (set.size < n) {
      set.add(Math.floor(Math.random() * max));
    }
    return Array.from(set);
  };

  const getSalePrice = (price, discountRate) => {
    return price - price * (discountRate / 100);
  };

  return (
    <BestItemsStyle>
      {getRandom(3, childs.length).map((idx) => (
        <ItemCard
          src={childs[idx].main_image}
          title={childs[idx].title}
          description={childs[idx].description}
          salePrice={getSalePrice(childs[idx].price, childs[idx].discount)}
          normalPrice={childs[idx].price}
          labels={childs[idx].label}
          key={idx}
          id={childs[idx]._id}
          large={true}
        />
      ))}
    </BestItemsStyle>
  );
}
