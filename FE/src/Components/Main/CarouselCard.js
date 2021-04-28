import React from "react";
import styled from "styled-components";
const CarouselCard = ({
  detailHash,
  PopUp,
  image,
  alt,
  deliveryType,
  title,
  description,
  n_price,
  s_price,
  badge,
  setModal,
  setModalData,
  best,
}) => {
  const openModal = () => {
    setModalData([detailHash, title, badge]);
    setModal(true);
  };

  return (
    <ContentMain best={best} PopUp={PopUp}>
      <Image best={best} image={image} PopUp={PopUp} onClick={openModal} />
      <Title>{title}</Title>
      <Description>{description}</Description>
      {n_price !== undefined ? (
        <Price>
          <SPrice>{s_price}</SPrice>
          <NPrice>{n_price}</NPrice>
        </Price>
      ) : (
        <SPrice false>{s_price}</SPrice>
      )}
      {badge !== undefined &&
        badge.length !== 0 &&
        (badge.length <= 1 ? (
          <Badge badge={badge}>{badge}</Badge>
        ) : (
          <BadgeBox>
            <Badge badge={badge[0]}>{badge[0]}</Badge>
            <Badge badge={badge[1]}>{badge[1]}</Badge>
          </BadgeBox>
        ))}
    </ContentMain>
  );
};
const Price = styled.div`
  margin-top: 10px;
`;

const ContentMain = styled.div`
  margin: 10px;
  align-self: ${({ best }) => (best ? `center` : null)};
`;

const Image = styled.div`
  cursor: pointer;
  background-image: ${({ image }) => `url(${image})`};
  background-size: cover;
  background-repeat: no-repeat;
  width: ${({ best, PopUp }) => (best ? `384px` : PopUp ? `160px` : `305px`)};
  height: ${({ best, PopUp }) => (best ? `384px` : PopUp ? `160px` : `305px`)};
  border-radius: 5px;
  &:hover {
    display: flex;
    justify-content: center;
    align-items: center;
    background: linear-gradient(0deg, rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
      ${({ image }) => `url(${image})`};
    background-size: cover;
    background-repeat: no-repeat;
    text-align: center;
    color: white;
    &::before {
      position: absolute;
      top: ${({ best, PopUp }) => (best ? `270px` : PopUp ? `50px` : `125px`)};
      font-size: 22px;
      font-weight: normal;
      content: "새벽배송";
    }
    &::after {
      background-color: transparent;
      width: 82px;
      height: 0.1px;
      border: 1px solid white;
      line-height: 50px;
      font-size: 22px;
      content: "전국택배";
    }
  }
`;

const Title = styled.div`
  margin-top: 16px;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: normal;
  font-size: 16px;
  line-height: 23px;
  color: #333333;
`;

const Description = styled.div`
  margin-top: 8px;
  color: #828282;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: normal;
  font-size: 14px;
  line-height: 20px;
`;
const NPrice = styled.span`
  width: 48px;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: normal;
  font-size: 14px;
  line-height: 20px;
  text-decoration-line: line-through;
  color: #bdbdbd;
  margin: 0 8px;
`;

const SPrice = styled.span`
  width: 73px;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 20px;
  line-height: 29px;
  margin: 0 8px 0 0;
`;

const Badge = styled.span`
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: row;
  padding: 4px 16px;
  width: 100px;
  height: 25px;
  background-color: ${({ badge }) =>
    badge == "이벤트특가" ? "#82d32d" : "#86C6FF"};
  border-radius: 5px;
  color: white;
  font-size: 14px;
  line-height: 20px;
  margin-right: 10px;
  font-weight: bold;
`;
const BadgeBox = styled.div`
  display: flex;
`;
export default CarouselCard;
