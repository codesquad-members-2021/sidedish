import React, { useState, useEffect } from "react";
import styled from "styled-components";
import { BeforeX, AfterX } from "../../Svg/Button";
import axios from "axios";

const PopUpModal = ({ setModal, ModalData, URL }) => {
  const [close, setClose] = useState(BeforeX);
  const [detail, setDetail] = useState();

  console.log(detail);

  useEffect(() => {
    const fetchData = async () => {
      const data = await axios(URL + "detail").then((res) => res.data.body);
      setDetail(data.filter((v) => v.hash === ModalData[0]).map((v) => v.data));
    };
    fetchData();
  }, [setDetail]); // eslint-disable-line

  const MouseEnter = () => {
    setClose(AfterX);
  };
  const MouseLeave = () => {
    setClose(BeforeX);
  };
  const Click = () => {
    setModal(false);
  };
  console.log(detail);
  return (
    <ModalBackground>
      <ModalCard>
        <Card>
          <Content>
            <ImageBox>
              <Image src={detail && detail[0].top_image} />
              <Mini>
                {detail &&
                  detail[0].thumb_images.map((v) => <MiniImage src={v} />)}
              </Mini>
            </ImageBox>
            <ModalContent>
              <Title>{ModalData[1]}</Title>
              <Description>
                {detail && detail[0].product_description}
              </Description>
              <Badge>{ModalData[2]}</Badge>
              <Sprice>{detail && detail[0].prices[1]}</Sprice>
              <Nprice>{detail && detail[0].prices[0]}</Nprice>
            </ModalContent>
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

const ModalContent = styled.div`
  position: absolute;
  top: 48px;
  right: 130px;
`;

const ImageBox = styled.div`
  position: absolute;
  left: 48px;
  top: 48px;
`;
const Mini = styled.div`
  position: absolute;
  display: flex;
`;
const MiniImage = styled.img`
  padding: 4px;
  width: 72px;
  height: 72px;
`;
const Badge = styled.span`
  padding: 4px 16px;
  width: 100px;
  height: 18px;
  background-color: ${({ children }) =>
    children == "이벤트특가" ? "#82d32d" : "#86C6FF"};
  border-radius: 5px;
  color: white;
  font-size: 14px;
  line-height: 20px;
  margin-right: 10px;
`;
const Nprice = styled.span``;
const Sprice = styled.span``;
const Title = styled.div`
  font-size: 24px;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
`;
const Description = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: normal;
  font-size: 18px;
  color: #828282;
`;
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
  position: relative;
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
