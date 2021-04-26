import styled from 'styled-components';
import preparingImage from '../../images/preparingImage.jpg';
import SpecialLabelTag from './SpecialLabelTag';
import ResponsiveCard from './Cards/ResponsiveCard.js';
import API from '../../util/API';
import { formatPriceAsNumber } from '../../util/serviceUtils';

const Card = ({ type = "default", number, item, setModalState }) => {
  switch (type) {
    case "responsive":
      return <ResponsiveCard number={number} loadingImage={preparingImage} SpecialLabelTag />
    case "default":
      break; // 수정예정
    default:
      break;
  }

  const { detail_hash, delivery_type, title,
    description, n_price, s_price, badge } = item;

  const fetchModalState = ({ hash }) => async () => {
    try {
      const { data } = await API.get.detail({ hash });
      setModalState({ status: 'success', title, badge, ...data });
    } catch ({ status }) {
      setModalState({ status });
    }
  };

  return (
    <CardWrapper>
      <ImageWrapper onClick={fetchModalState({ hash: detail_hash })}>
        <Image src={preparingImage} alt="" />
        <Overlay>
          <OverlayText>
            <div>{delivery_type[0]}</div>
            <hr />
            <div>{delivery_type[1]}</div>
          </OverlayText>
        </Overlay>
      </ImageWrapper>
      <TitleDiv>{title}</TitleDiv>
      <DescriptionDiv>{description}</DescriptionDiv>

      <PriceWrapper>
        {n_price ?
          <><SalePriceSpan>{formatPriceAsNumber(s_price)}</SalePriceSpan>
            <NetPriceSpan>{formatPriceAsNumber(n_price)}</NetPriceSpan></> :
          <SalePriceSpan>{formatPriceAsNumber(s_price)}</SalePriceSpan>}
      </PriceWrapper>

      {badge?.map((badge, idx) => {
        return (<SpecialLabelTag key={idx} badge={badge} />);
      })}
    </CardWrapper>
  )
}

const CardWrapper = styled.div`
  width: 384px;
  height: 540px;
`;

const ImageWrapper = styled.div`
  position: relative;
  width: 384px;
  height: 384px;
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


export default Card;
