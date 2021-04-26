import styled from 'styled-components';
import DetailModal from 'components/detail/DetailModal';
import DetailCarousel from 'components/detail/DetailCarousel';
import DetailCloseButton from 'components/detail/DetailCloseButton';
import useFetch from 'customHooks/useFetch';

const Detail = ({ modalData, modalState, setModalState }) => {
  const detailData = useFetch(
    `https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail/`,
    []
  );
  const { hash, title } = modalData;
  let currentData;
  detailData.forEach((data) => {
    if (data.hash === hash) {
      currentData = data.data;
    }
  });

  if (!currentData) return null;

  return (
    <DetailBoxDiv {...{ modalState }}>
      <ModalWrapper>
        <DetailCloseButton {...{ setModalState }} />
        <DetailModal {...{ title, currentData }} />
        <DetailCarousel />
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
