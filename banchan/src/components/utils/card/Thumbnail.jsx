import { CenterContainer } from "../styles/common";
import styled from "styled-components";

const mockImage = "https://recipe1.ezmember.co.kr/cache/recipe/2020/09/23/5e308abb30b00ecb9c1b9b398db5b4451.jpg";

const Thumbnail = ({ product, cardSize, type }) => {
  return (
    <StyledThumbnail>
      <HoverLayer cardSize={cardSize}>
        <DeliveryTypeList>
          {product.delivery_type.reduce((acc, val, index, array) => {
            acc.push(
              <p>
                {val}
                {index < array.length - 1 && <Divider />}
              </p>
            );
            return acc;
          }, [])}
        </DeliveryTypeList>
      </HoverLayer>
      <StyledImg cardSize={cardSize} src={type === "베스트" ? mockImage : product.image} alt="card-image" />
    </StyledThumbnail>
  );
};

export default Thumbnail;

const StyledThumbnail = styled.div`
  position: relative;
`;

const HoverLayer = styled(CenterContainer)`
  color: ${(props) => props.theme.colors.white};
  opacity: 0;
  position: absolute;
  top: 0;
  left: 0;
  width: ${(props) => props.cardSize};
  height: ${(props) => props.cardSize};
  border-radius: ${(props) => props.theme.borders.radius};
  z-index: 4;
  font-size: ${(props) => props.theme.fontSizes.XL};
  font-weight: bold;

  &:hover {
    background: linear-gradient(0deg, rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6));
    opacity: 1;
  }
`;

const DeliveryTypeList = styled.div``;

const Divider = styled.div`
  border: 1px solid ${(props) => props.theme.colors.white};
  width: 90px;
  margin: 16px 0;
`;

const StyledImg = styled.img`
  border-radius: ${(props) => props.theme.borders.radius};
  margin-bottom: 16px;
  width: ${(props) => props.cardSize};
  height: ${(props) => props.cardSize};
`;
