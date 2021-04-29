import styled from "styled-components";
import Card from "../../componentUtils/card/Card";
import { CenterContainer } from "../../componentUtils/styles/common";
// import { mockData } from "../../../utils/mockData";
import JennyCarousel from "reallyawesome-jennyrousel/dist/JennyCarousel";
// import theme from "../../utils/styles/theme";
import useFetch from "../../../hooks/useFetch";

const CarouselSection = ({ url, title }) => {
  const { products, loading, error } = useFetch({ url });

  if (error) return <div>error</div>;

  return loading ? (
    <div>로딩중..</div>
  ) : (
    <SectionContainer>
      <SectionBox>
        <SectionTitle>{title}</SectionTitle>
        <JennyCarousel
          BUTTON_SIZE={35}
          NUM_OF_DATAS={products && products.body.length}
        >
          {products &&
            products.body.map((product) => (
              <Card
                key={product.detail_hash}
                product={product}
                cardSize={(props) => props.theme.cardSizes.M}
                margin={5}
              />
            ))}
        </JennyCarousel>
      </SectionBox>
    </SectionContainer>
  );
};

const SectionContainer = styled(CenterContainer)`
  flex-direction: column;
  position: relative;
  margin: 30px 0;
`;

const SectionBox = styled.div`
  width: 1500px;
`;

const SectionTitle = styled.div`
  font-size: ${(props) => props.theme.fontSizes.XL};
  font-weight: bold;
  color: ${(props) => props.theme.darkGray};
  margin: 20px 5em;
`;

export default CarouselSection;
