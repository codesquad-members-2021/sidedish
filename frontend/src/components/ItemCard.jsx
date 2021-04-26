import styled from "styled-components";
import { theme, AlignTextCenter } from "./Theme";
import { useState } from "react";
import DetailPage from "./detail/DetailPage";
import useFetch from "./useFetch";

const Card = styled.div`
  margin-top: 40px;
  width: ${(props) => {
    return props.size === "L" ? "384px" : "308px";
  }};
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
const ItemPrice = styled.span`
  font-size: ${theme.fontSize.larger};
  font-weight: Bold;
  margin-right: 10px;
`;
const ItemPriceNormal = styled.span`
  text-decoration: line-through;
  color: ${theme.colors.grey_text};
`;
const BadgeWrapper = styled.div`
  display: flex;
`;
const Badge = styled(AlignTextCenter)`
  width: 97px;
  height: 28px;
  margin-top: 20px;
  margin-right: 20px;
  background-color: ${(props) => {
    return props.val === "이벤트특가"
      ? theme.colors.green
      : theme.colors.skyblue_badge;
  }};
  color: ${theme.colors.white};
  font-weight: Bold;
  font-size: ${theme.fontSize.small};
  border-radius: 10px;
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
    setDetailFetchUrl(
      "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail/" +
        hash
    );
  };
  const [detailData, loadingState] = useFetch(detailFetchUrl); //첫 페이지 로딩시부터 데이터요청이 진행되는게 맞는가?
  return (
    <>
      {ModalMode && !loadingState && (
        <DetailPage
          detailData={detailData.data}
          ModalMode={ModalMode}
          setModalState={setModalState}
        ></DetailPage>
      )}
      <Card size={size}>
        <ClickArea onClick={() => handleClick(data.detail_hash)}>
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
        <ItemPrice>{data.s_price ? data.s_price : data.n_price}</ItemPrice>
        {data.s_price && <ItemPriceNormal>{data.n_price}원</ItemPriceNormal>}

        <BadgeWrapper>
          {data.badge &&
            data.badge.map((el, idx) => (
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
