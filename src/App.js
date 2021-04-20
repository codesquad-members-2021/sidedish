import Card from "./js/components/common/Card";
import TestCarousel from "./js/util/TestCarousel";
function App() {
  const test = {
    detail_hash: "HBDEF",
    image:
      "http://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg",
    alt: "[미노리키친] 규동 250g",
    delivery_type: ["새벽배송", "전국택배"],
    title: "[미노리키친] 규동 250g",
    description: "일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥",
    n_price: "6,500",
    s_price: "7,000원",
    badge: ["이벤트특가"],
  };

  return (
    <>
      <Card {...test} />
      <TestCarousel />
    </>
  );
}

export default App;
