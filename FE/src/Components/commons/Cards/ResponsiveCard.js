import styled from 'styled-components';

import preparingImage from 'images/preparingImage.jpg';

const ResponsiveCard = ({ payload, refetchModal }) => {

  const { id, topImage, deliveryTypes, title, description, salePrice, normalPrice, badges } = payload;

  return (
    <CardWrapper onClick={refetchModal({ hash: id }, { title, badges })}>
      <ImageWrapper>
        <Image src={topImage} onError={e => e.target.src = preparingImage} alt="" />
        <Overlay>
          <OverlayText>
            {deliveryTypes?.slice(1, deliveryTypes.length - 1).split(", ").map((type, i) => {
              if (i === 0) return (<><div>{type}</div> <hr /></>);
              return (<div>{type}</div>);
            })}

          </OverlayText>
        </Overlay>
      </ImageWrapper>
      <TitleDiv> {title} </TitleDiv>
      <DescriptionDiv> {description} </DescriptionDiv>
      <PriceWrapper>
        <SalePriceSpan> {salePrice} </SalePriceSpan>
        <NetPriceSpan> {normalPrice} </NetPriceSpan>
      </PriceWrapper>
      {/* <SpecialLabelTag /> */}
    </CardWrapper>
  )
}

const CardWrapper = styled.div`
  width: 100%;
  
  &:hover{
    cursor:pointer;
  }
`;

const ImageWrapper = styled.div`
  position: relative;
  width: 100%;
  &:hover{
    cursor:pointer;
  }
`;

const Image = styled.img`
  width: 100%;
  height: 100%;
`;

const Overlay = styled.div`
  position: absolute;
  display:flex;
  height: 100%;
  width: inherit;
  background: #000;
  bottom: 0;
  opacity: 0;
  transition: .5s ease;
  place-items: center;
  justify-content: center;
  color: #fff;
  &:hover{
    opacity: .6;
  }
`;

const OverlayText = styled.span`
  font-weight: 700;
  font-size: 24px;
  line-height: 35px;
`;

const TitleDiv = styled.div`
  margin: 0 0 8px 0;
  line-height: 23px;
`;

const DescriptionDiv = styled.div`
  min-height: 50px;

  font-size: 14px;
  color: #828282;
  line-height: 20px;
`;

const SalePriceSpan = styled.span`
  font-size: 20px;
  font-weight: 700;
  margin: 0 8px 0 0;
  line-height: 29px;
  &::after{
    content:"원";
  }
`;

const NetPriceSpan = styled.span`
  font-size: 14px;
  color: #BDBDBD;
  text-decoration: line-through;
  &::after{
    content:"원";
  }
`;

const PriceWrapper = styled.div`
  margin: 0 0 16px 0;
`;

export default ResponsiveCard
