import styled from "styled-components";
import ItemCard from "../util/ItemCard";

const SlideItemsStyle = styled.div`
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-gap: 1.5rem;
  padding: 2.5rem 0;
`;

export default function SlideItems({ onFetchDetailData }) {
  return (
    <SlideItemsStyle>
      <ItemCard onFetchDetailData={onFetchDetailData} src = "http://web.archive.org/web/20190129014225im_/https://cdn.bmf.kr/_data/product/IF235/20ea0478c029ad4fda3fa2885d53c5d4.jpg" title = "[집밥의완성]초여름보양세트" description = "무더위에 대비하는 6월 한상차림 초여름 보양세트" salePrice="5000" normalPrice="6000" text="이벤트특가" color="#fff" bgColor="#82D32D"/>
      <ItemCard onFetchDetailData={onFetchDetailData} src = "http://web.archive.org/web/20190129014225im_/https://cdn.bmf.kr/_data/product/IF235/20ea0478c029ad4fda3fa2885d53c5d4.jpg" title = "[집밥의완성]초여름보양세트" description = "무더위에 대비하는 6월 한상차림 초여름 보양세트" salePrice="5000" normalPrice="6000" text="이벤트특가" color="#fff" bgColor="#82D32D"/>
      <ItemCard onFetchDetailData={onFetchDetailData} src = "http://web.archive.org/web/20190129014225im_/https://cdn.bmf.kr/_data/product/IF235/20ea0478c029ad4fda3fa2885d53c5d4.jpg" title = "[집밥의완성]초여름보양세트" description = "무더위에 대비하는 6월 한상차림 초여름 보양세트" salePrice="5000" normalPrice="6000" text="런칭특가" color="#fff" bgColor="#86C6FF"/>
      <ItemCard onFetchDetailData={onFetchDetailData} src = "http://web.archive.org/web/20190129014225im_/https://cdn.bmf.kr/_data/product/IF235/20ea0478c029ad4fda3fa2885d53c5d4.jpg" title = "[집밥의완성]초여름보양세트" description = "무더위에 대비하는 6월 한상차림 초여름 보양세트" salePrice="5000" normalPrice="6000" text="이벤트특가" color="#fff" bgColor="#82D32D"/>
    </SlideItemsStyle>
  )
}