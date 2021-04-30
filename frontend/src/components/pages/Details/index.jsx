import React from "react";
import ReactDom from "react-dom";
import styled from "styled-components";
import DetailUpper from "../../organisms/DetailUpper";
import DetailLower from "../../organisms/DetailLower";
import Icon from "../../atoms/Icon";

const OverlayStyle = styled.div`
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0, 0, 0, 0.4);
  z-index: 1000;
`;

const DetailStyles = styled.div`
  padding: 48px;
  width: 960px;
  display: flex;
`;

const ModalStyles = styled.div`
  position: fixed;
  display: flex;
  flex-direction: column;
  top: 50%;
  left: 50%;

  transform: translate(-50%, -50%);
  width: 960px;
  height: 1038px;
  background: #ffffff;
  border-radius: 5px 5px 0px 0px;
  z-index: 1000;
`;

const Details = ({ open, onClose, ...props }) => {
  if (!open) return null;

  return ReactDom.createPortal(
    <>
      <OverlayStyle />
      <ModalStyles>
        <DetailStyles>
          <DetailUpper _dishType="detailDish" _hash={props._hash} />
        </DetailStyles>
        <DetailLower _dishType="details" />
        <Icon
          onClose={onClose}
          _type="CloseIcon"
          _color="#FFFFFF"
          _width="20px"
          _position="absolute"
          _right="-26px"
          _top="2px"
        />
      </ModalStyles>
    </>,
    document.getElementById("detail")
  );
};

export default Details;
