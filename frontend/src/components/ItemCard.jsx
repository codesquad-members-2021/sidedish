import styled from "styled-components";
import {
  theme,
  AlignTextCenter,
  ItemPrice,
  ItemPriceNormal,
  BadgeWrapper,
  Badge,
} from "./Theme";
import { useState } from "react";
import DetailPage from "./detail/DetailPage";
import useFetch from "./useFetch";

const Card = styled.div`
  margin-top: 40px;
  width: ${(props) => {
    return props.size === "L" ? "384px" : "308px";
  }};
`;
const ItemTitle = styled.div`
  font-size: ${theme.fontSize.medium};
  font-weight: Bold;
  margin-bottom: 16px;
  &:hover {
    text-decoration: underline;
  }
`;
const ItemDesc = styled.div`
  font-size: ${theme.fontSize.small};
  color: ${theme.colors.grey_text};
  margin-bottom: 16px;
  &:hover {
    text-decoration: underline;
  }
`;
const IMG = styled(AlignTextCenter)`
  position: relative;
  width: ${(props) => {
    return props.size === "L" ? "384px" : "308px";
  }};
  height: ${(props) => {
    return props.size === "L" ? "384px" : "308px";
  }};
  margin-bottom: 32px;
  background-image: url(${(props) => props.image});
  background-size: cover;
  &:hover {
    background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
      url(${(props) => props.image});
    div {
      opacity: 1;
    }
  }
`;

const DeliveryBlock = styled.div`
  color: ${theme.colors.white};
  font-size: ${theme.fontSize.larger};
  font-weight: ${theme.fontWeight.bold};
  opacity: 0;
`;
const imgPosition = {
  position: "relative",
  top: "-7px",
  left: "2px",
};
const ClickArea = styled.div`
  cursor: pointer;
`;

function ItemCard({ data, size }) {
  const [detailFetchUrl, setDetailFetchUrl] = useState(null);
  const [ModalMode, setModalState] = useState(false);
  const handleClick = (hash) => {
    setModalState(!ModalMode); //작업중
    setDetailFetchUrl("http://15.164.68.136:8080/detail/" + hash);
  };
  const [detailData, loadingState] = useFetch(detailFetchUrl); //첫 페이지 로딩시부터 데이터요청이 진행되는게 맞는가?
  return (
    <>
      {ModalMode && !loadingState && (
        <DetailPage
          detailData={detailData.data}
          ModalMode={ModalMode}
          setModalState={setModalState}
          item={data.alt}
          badges={data.badges}
        ></DetailPage>
      )}
      <Card size={size}>
        <ClickArea onClick={() => handleClick(data.detailHash, data.badges)}>
          <IMG size={size} image={data.image} alt={data.alt}>
            <DeliveryBlock>
              <div>새벽배송</div>
              <img style={imgPosition} src="./line.png" alt="line"></img>
              <div>전국택배</div>
            </DeliveryBlock>
          </IMG>

          <ItemTitle>{data.alt}</ItemTitle>
          <ItemDesc>{data.description}</ItemDesc>
        </ClickArea>
        <ItemPrice>{data.sPrice ? data.sPrice + "원" : data.nPrice}</ItemPrice>
        {data.sPrice && <ItemPriceNormal>{data.nPrice}원</ItemPriceNormal>}

        <BadgeWrapper>
          {data.badges &&
            data.badges.map((el, idx) => (
              <Badge key={idx} val={el}>
                {el}
              </Badge>
            ))}
        </BadgeWrapper>
      </Card>
    </>
  );
}

export default ItemCard;
