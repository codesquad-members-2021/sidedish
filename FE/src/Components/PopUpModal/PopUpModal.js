import React, { useState } from "react";
import styled from "styled-components";
import { BeforeX, AfterX } from "../../Svg/Button";

const PopUpModal = ({ setModal, ModalData }) => {
  const [close, setClose] = useState(BeforeX);
  console.log(ModalData);
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
          <Content>
            <Image src={ModalData[0]} />
            <div>
              <Title>{ModalData[1]}</Title>
              <Description>{ModalData[7]}</Description>
              <Badge>{ModalData[10]}</Badge>
              <Sprice>{ModalData[9]}</Sprice>
              <Nprice>{ModalData[8]}</Nprice>
            </div>
          </Content>
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

const Badge = styled.span``;
const Nprice = styled.span``;
const Sprice = styled.span``;
const Title = styled.div`
  display: inline-block;
`;
const Description = styled.div``;
const Image = styled.img`
  width: 392px;
  height: 392px;
`;

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
  display: flex;
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
  position: absolute;
  height: 30px;
  right: 4px;
  display: flex;
  justify-content: center;
  align-items: center;
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
