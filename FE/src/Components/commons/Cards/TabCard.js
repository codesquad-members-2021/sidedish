import styled from 'styled-components';
import preparingImage from 'images/preparingImage.jpg';
import SpecialLabelTag from 'Components/commons/SpecialLabelTag';
import { formatPriceAsNumber } from 'util/serviceUtils';

const TabCard = ({ item, refetchModal }) => {
  const { id, deliveryTypes, title, description,
    normalPrice, salePrice, badges, topImage } = item;

  const [DOMESTIC_POST, NEXT_DAY] = deliveryTypes.slice(1, -1).split(', ');
  return (
    <CardWrapper>
      <ImageWrapper onClick={refetchModal({ hash: id }, { title, badges })}>
        <Image src={topImage} onError={e => e.target.src = preparingImage} alt="" />
        <Overlay>
          <OverlayText>
            <div>{DOMESTIC_POST}</div>
            <hr />
            <div>{NEXT_DAY}</div>
          </OverlayText>
        </Overlay>
      </ImageWrapper>
      <TitleDiv>{title}</TitleDiv>
      <DescriptionDiv>{description}</DescriptionDiv>

      <PriceWrapper>
        {normalPrice !== salePrice ?
          <><SalePriceSpan>{formatPriceAsNumber(salePrice)}</SalePriceSpan>
            <NetPriceSpan>{formatPriceAsNumber(normalPrice)}</NetPriceSpan></> :
          <SalePriceSpan>{formatPriceAsNumber(salePrice)}</SalePriceSpan>}
      </PriceWrapper>

      {badges?.slice(1, -1).split(', ').map((badge, idx) => {
        return (<SpecialLabelTag key={`TabSpecialLabel-${idx}`} badge={badge} />);
      })}
    </CardWrapper>
  )
}

const CardWrapper = styled.div`
  max-width: 384px;
  max-height: 540px;
  flex-basis:33%;
`;

const ImageWrapper = styled.div`
  position: relative;
  max-width: 384px;
  max-height: 384px;
  margin: 0 0 16px 0;
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
  width: 100%;
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
  font-size: 14px;
  color: #828282;
  margin: 0 0 16px 0;
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

export default TabCard;
