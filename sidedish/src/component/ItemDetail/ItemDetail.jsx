import React, { useState } from 'react';
import styled from 'styled-components';
import usePortal from 'hooks/usePortal';
import { createPortal } from 'react-dom/cjs/react-dom.development';

const ItemDetail = ({ id, toggleModal }) => {
  const portalElem = usePortal('root');

  return createPortal(
    <StyleModal>
      <div onClick={toggleModal}>❌</div>
    </StyleModal>,
    portalElem
  );
};

export default ItemDetail;

const StyleModal = styled.div`
  z-index: 10;
  position: fixed;
  display: flex;
  align-items: center;
  justify-content: center;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.3);
`;
