import styled from 'styled-components';
import DetailModal from 'components/detail/DetailModal';
import DetailCarousel from 'components/detail/DetailCarousel';
import DetailCloseButton from 'components/detail/DetailCloseButton';
import useFetch from 'customHooks/useFetch';
import { useState } from 'react';

const Detail = ({ modalData, modalState, setModalState }) => {
  const detailData = useFetch(
    `https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail/`,
    []
  );
  const { hash, title, badge } = modalData;
  let currentData;
  detailData.forEach((data) => {
    if (data.hash === hash) {
      currentData = data.data;
    }
  });

  const [orderCount, setOrderCount] = useState(1);

  const plusCount = () => {
    setOrderCount(orderCount + 1);
  };
  const minusCount = () => {
    if (orderCount <= 0) return;
    setOrderCount(orderCount - 1);
  };

  if (!currentData) return null;
  const detailSection = currentData.detail_section;
  return (
    <DetailBoxDiv {...{ modalState }}>
      <ModalWrapper>
        <DetailCloseButton {...{ setModalState, setOrderCount }} />
        <DetailModal
          {...{
            title,
            badge,
            currentData,
            orderCount,
            setOrderCount,
            plusCount,
            minusCount,
          }}
        />
        <DetailCarousel {...{ detailSection }} />
      </ModalWrapper>
    </DetailBoxDiv>
  );
};

export default Detail;

const DetailBoxDiv = styled.div`
  display: ${({ modalState }) => modalState};
  position: absolute;
  width: 100%;
  height: 200%;
  overflow-y: hidden;
  left: 0px;
  top: 0px;
  background: rgba(0, 0, 0, 0.4);
  z-index: 1000;
`;

const ModalWrapper = styled.div`
  position: relative;
  margin-top: 120px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
`;
