import styled from "styled-components";
import ItemCard from "../util/ItemCard";

const BestItemsStyle = styled.div`
  background-color: #EEF4FA;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-gap: 1.5rem;
  padding: 2.5rem;
`;

export default function BestItems() {
  return (
    <BestItemsStyle>
      <ItemCard src = "http://web.archive.org/web/20190129014225im_/https://cdn.bmf.kr/_data/product/IF235/20ea0478c029ad4fda3fa2885d53c5d4.jpg" title = "[집밥의완성]초여름보양세트" description = "무더위에 대비하는 6월 한상차림 초여름 보양세트" salePrice="5000" normalPrice="6000" />
      <ItemCard src = "http://web.archive.org/web/20190129014225im_/https://cdn.bmf.kr/_data/product/IF235/20ea0478c029ad4fda3fa2885d53c5d4.jpg" title = "[집밥의완성]초여름보양세트" description = "무더위에 대비하는 6월 한상차림 초여름 보양세트" salePrice="5000" normalPrice="6000" />
      <ItemCard src = "http://web.archive.org/web/20190129014225im_/https://cdn.bmf.kr/_data/product/IF235/20ea0478c029ad4fda3fa2885d53c5d4.jpg" title = "[집밥의완성]초여름보양세트" description = "무더위에 대비하는 6월 한상차림 초여름 보양세트" salePrice="5000" normalPrice="6000" />
    </BestItemsStyle>
  )
}