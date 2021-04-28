import React from 'react';
import ReactDom from 'react-dom';
import styled from 'styled-components';
import Icon from '../../atoms/Icon';

const OverlayStyle = styled.div`
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0, 0, 0, 0.4);
  z-index: 1000;
`;

const ModalStyles = styled.div`
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 960px;
  height: 680px;

  background: #ffffff;
  border-radius: 5px 5px 0px 0px;

  z-index: 1000;
`;

const Modal = ({ open, onClose, ...props }) => {
  if (!open) return null;

  return ReactDom.createPortal(
    <>
      <OverlayStyle />
      <ModalStyles>
        {props._hash}
        <Icon
          onClose={onClose}
          _type="CloseIcon"
          _color="#FFFFFF"
          _width="16px"
          _position="absolute"
          _right="-20px"
          _top="0"
        />
      </ModalStyles>
    </>,
    document.getElementById('detail')
  );
};

export default Modal;
