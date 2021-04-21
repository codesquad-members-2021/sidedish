import { useEffect, useState } from "react";
import Card from "../utils/Card";
import theme from "../utils/theme";

const CarouselSection = (props) => {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    fetch(
      "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main"
    )
      .then((response) => response.json())
      .then((result) => setProducts(result.body))
      .then((error) => console.log("error", error));
  }, []);

  return (
    <ul>
      {products.map((product) => (
        <Card
          key={product.detail_hash}
          product={product}
          cardSize={theme.cardSizes.M}
        />
      ))}
    </ul>
  );
};

export default CarouselSection;
