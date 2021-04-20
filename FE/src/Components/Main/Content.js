import React from "react";
import styled from "styled-components";

const Content = ({
  detail_hash,
  image,
  alt,
  delivery_type,
  title,
  description,
  n_price,
  s_price,
  badge,
}) => {
  return (
    <ContentMain>
      <Image src={image} />
      <Title>{title}</Title>
      <Description>{description}</Description>

      {n_price !== undefined ? (
        <div>
          <NPrice>{n_price}</NPrice>
          <SPrice>{s_price}</SPrice>
        </div>
      ) : (
        <NPrice false>{s_price}</NPrice>
      )}

      {badge && <Badge>{badge}</Badge>}
    </ContentMain>
  );
};

const ContentMain = styled.div`
  margin: 0 16px;
`;

const Image = styled.img`
  width: 308px;
  height: 308px;
  border-radius: 5px;
`;

const Title = styled.div`
  width: 308px;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: normal;
  font-size: 16px;
  line-height: 23px;
  color: #333333;
`;

const Description = styled.div`
  width: 308px;
  color: #828282;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: normal;
  font-size: 14px;
  line-height: 20px;
`;
const NPrice = styled.span`
  width: 73px;

  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 20px;
  line-height: 29px;
  margin: 0 8px 0 0;
`;

const SPrice = styled.span`
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

const Badge = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: row;
  padding: 4px 16px;
  width: 62px;
  height: 18px;
  background: #82d32d;
  border-radius: 5px;
  color: white;
  font-size: 14px;
  line-height: 20px;
`;
export default Content;
