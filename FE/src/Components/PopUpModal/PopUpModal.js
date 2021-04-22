import React, { useState } from "react";
import styled from "styled-components";
import { BeforeX, AfterX } from "../../Svg/Button";

const PopUpModal = ({ setModal }) => {
  const [close, setClose] = useState(BeforeX);

  const MouseEnter = () => {
    setClose(AfterX);
  };
  const MouseLeave = () => {
    setClose(BeforeX);
  };
  const Click = () => {
    setModal(false);
  };

  return (
    <ModalBackground>
      <ModalCard>
        <Card>
          <Content></Content>
          <Carousel></Carousel>
        </Card>
        <Button
          onMouseEnter={MouseEnter}
          onMouseLeave={MouseLeave}
          onClick={Click}
        >
          {close}
        </Button>
      </ModalCard>
    </ModalBackground>
  );
};

const ModalBackground = styled.div`
  position: fixed;
  z-index: 3;
  width: 100%;
  height: 100%;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  background: rgba(0, 0, 0, 0.3);
  display: flex;
  justify-content: center;
`;
const ModalCard = styled.div`
  position: fixed;
  top: 100px;
  display: flex;
  width: 1000px;
  height: 800px;
  background-color: transparent;
`;
const Card = styled.div`
  width: 960px;

  background-color: white;
`;

const Content = styled.div`
  width: 960px;
  height: 680px;
  background-color: white;
`;

const Carousel = styled.div`
  width: 960px;
  height: 396px;
  background-color: #f5f5f7;
`;

const Button = styled.button`
  display: flex;
  align-items: top;
  &:active {
    transform: translateY(2px);
  }
  color: white;
  background-color: transparent;
  border: none;
  outline: none;
  font-weight: bold;
`;

export default PopUpModal;
