import React, { useState } from 'react';
import styled from 'styled-components';

const ItemDetail = ({ id, toggleModal }) => {
  return <StyleModal></StyleModal>;
};

export default ItemDetail;

const StyleModal = styled.div`
  z-index: 10;
  position: absolute;
  top: 0;
  left: 0;
  width: 200%;
  height: 200%;
  background-color: rgba(0, 0, 0, 0.3);
`;
