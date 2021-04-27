import React, { useState } from 'react';
import styled from 'styled-components';
import usePortal from 'hooks/usePortal';
import { createPortal } from 'react-dom/cjs/react-dom.development';
import useFetch from 'hooks/useFetch';
import { URL } from 'util/data';
import DetailModal, { ModalStyle } from 'component/ItemDetail/DetailModal';

const ItemDetail = ({ id, toggleModal, title, badge }) => {
  const portalElem = usePortal('root');

  const parseDetailData = (obj) => {
    const parsedData = obj.data;
    return parsedData;
  };
  const { data: detailData, loading, error } = useFetch({
    url: URL.detail(id),
    parse: parseDetailData,
  });

  if (error) throw Error(error);
  return createPortal(
    <StyleModal>
      {detailData ? (
        <DetailModal detailData={detailData} loading={loading} title={title} badge={badge} />
      ) : (
        <ModalStyle>데이터가 없습니다.</ModalStyle>
      )}
      <div className="closeBtn" onClick={toggleModal}>
        X
      </div>
    </StyleModal>,
    portalElem
  );
};

export default ItemDetail;

const StyleModal = styled.div`
  position: fixed;
  display: flex;
  align-items: center;
  justify-content: center;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.3);

  .closeBtn {
    position: fixed;
    left: 86%;
    font-size: 24px;
    top: 36px;
    color: white;
  }
`;
