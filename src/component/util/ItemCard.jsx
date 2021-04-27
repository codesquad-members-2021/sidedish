import styled from "styled-components";
import Label from "./Label";

const ItemCardStyle = styled.div``;

const ImgContainerStyle = styled.div`
  position: relative;
  margin-bottom: 1rem;
  line-height: 0;
  border-radius: 0.3rem;
  overflow: hidden;
`;

const ImgStyle = styled.img.attrs((props) => ({
  src: props.src
}))`
  width: 100%;
  height: 18rem;
  &:hover + div {
    display: block;
  }
`;

const HoverStyle = styled.div`
  font-size: 1.5rem;
  text-align: center;
  font-weight: 600;
  color: #fff;
  background-color: rgba(0,0,0,50%);
  position: absolute;
  top: 0;
  width: 100%;
  height: 100%;
  padding: calc(50% - 3rem) calc(50% - 4rem);
  display: none;
  div {
    margin: 1rem;
    line-height: 1rem;
  }
  div:first-child {
    padding-bottom: 1rem;
    border-bottom: 1px solid #fff;
  }
  &:hover {
    display: block;
  }
`;

const TitleStyle = styled.div`
  margin-bottom: 0.5rem;
`;

const DescriptionStyle = styled.div`
  font-size: 0.875rem;
  color: #828282;
  margin-bottom: 1rem;
`;

const PricesStyle = styled.div`
  margin-bottom: 1rem;
`;

const NormalPriceStyle = styled.div`
  text-decoration: line-through;
  font-size: 0.875rem;
  color: #BDBDBD;
  display: inline-block;
`;

const SalePriceStyle = styled.div`
  font-size: 1.25rem;
  font-weight: 600;
  margin-right: 0.5rem;
  display: inline-block;
`;

export default function ItemCard({id, onFetchDetailData, src = "", title = "", description = "", salePrice, normalPrice, labels=[] }) {
  return (
    <ItemCardStyle onClick={() => onFetchDetailData(id)}>
      <ImgContainerStyle>
        <ImgStyle src={src}/>
        <HoverStyle>
          <div>새벽배송</div>
          <div>전국택배</div>
        </HoverStyle>
      </ImgContainerStyle>
      <div>
        <TitleStyle>{title}</TitleStyle>
        <DescriptionStyle>{description}</DescriptionStyle>
        <PricesStyle>
          <SalePriceStyle>{salePrice}원</SalePriceStyle>
          <NormalPriceStyle>{normalPrice}원</NormalPriceStyle>
        </PricesStyle>
        {
          labels.map((label, idx) => <Label text={label} key={idx}/>)
        }
      </div>
    </ItemCardStyle>
  )
}