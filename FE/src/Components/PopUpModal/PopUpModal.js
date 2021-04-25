import React, { useState, useEffect } from "react";
import styled from "styled-components";
import {
  BeforeX,
  AfterX,
  BeforeDown,
  AfterDown,
  BeforeUp,
  AfterUp,
} from "../../Svg/Button";
import axios from "axios";

const PopUpModal = ({ setModal, ModalData, URL }) => {
  const [close, setClose] = useState(BeforeX);
  const [detail, setDetail] = useState();
  const [Up, setUp] = useState(BeforeUp);
  const [Down, setDown] = useState(BeforeDown);
  const [quantity, setQuantity] = useState(0);

  useEffect(() => {
    const fetchData = async () => {
      const data = await axios(URL + "detail").then((res) => res.data.body);
      setDetail(data.filter((v) => v.hash === ModalData[0]).map((v) => v.data));
    };
    fetchData();
  }, [setDetail]); // eslint-disable-line

  const MouseEnter = (e) => {
    if (e.target.classList.contains("Up")) setUp(AfterUp);
    if (e.target.classList.contains("Down")) setDown(AfterDown);
    if (e.target.classList.contains("close")) setClose(AfterX);
  };
  const MouseLeave = (e) => {
    if (e.target.classList.contains("Up")) setUp(BeforeUp);
    if (e.target.classList.contains("Down")) setDown(BeforeDown);
    if (e.target.classList.contains("close")) setClose(BeforeX);
  };
  const Click = () => {
    setModal(false);
  };
  const quantityCheck = (e) => {
    if (e.target.classList.contains("Up")) setQuantity(quantity + 1);
    if (quantity >= 1) {
      if (e.target.classList.contains("Down")) setQuantity(quantity - 1);
    }
  };

  const Calculate = () => {
    if (detail[0].prices.length === 1) {
      return quantity * detail[0].prices[0].replace(/[^0-9]/g, "");
    }
    if (detail[0].prices.length === 2) {
      return quantity * detail[0].prices[1].replace(/[^0-9]/g, "");
    }
  };

  return (
    <ModalBackground>
      <ModalCard>
        <Card>
          <Content>
            {detail && (
              <>
                <ImageBox>
                  <Image src={detail[0].top_image} />
                  <Mini>
                    {detail[0].thumb_images.map((v) => (
                      <MiniImage src={v} />
                    ))}
                  </Mini>
                </ImageBox>
                <ModalContent>
                  <ImageInformation>
                    <Title>{ModalData[1]}</Title>
                    <Description>{detail[0].product_description}</Description>
                    {ModalData[2] !== undefined &&
                    ModalData[2].length !== 0 &&
                    ModalData[2].length <= 1 ? (
                      <Badge badge={ModalData[2]}>{ModalData[2]}</Badge>
                    ) : null}
                    <Sprice>{detail[0].prices[1]}</Sprice>
                    <Nprice props={detail[0].prices}>
                      {detail[0].prices[0]}
                    </Nprice>
                  </ImageInformation>
                  <Divider />
                  <Information>
                    <Subheading>
                      <InformationTitle>적립금</InformationTitle>
                      <InformationContent>{detail[0].point}</InformationContent>
                    </Subheading>
                    <Subheading middle>
                      <InformationTitle>배송정보</InformationTitle>
                      <InformationContent>
                        {detail[0].delivery_info}
                      </InformationContent>
                    </Subheading>
                    <Subheading>
                      <InformationTitle>배송비</InformationTitle>
                      <InformationContent>
                        {detail[0].delivery_fee}
                      </InformationContent>
                    </Subheading>
                  </Information>
                  <Divider />
                  <ProductCounter>
                    <InformationTitle>수량</InformationTitle>
                    <Counter>
                      <Number>{quantity}</Number>
                      <CounterButton>
                        <UpButton
                          className="Up"
                          onClick={quantityCheck}
                          onMouseEnter={MouseEnter}
                          onMouseLeave={MouseLeave}
                        >
                          {Up}
                        </UpButton>
                        <DownButton
                          className="Down"
                          onClick={quantityCheck}
                          onMouseEnter={MouseEnter}
                          onMouseLeave={MouseLeave}
                        >
                          {Down}
                        </DownButton>
                      </CounterButton>
                    </Counter>
                  </ProductCounter>
                  <Divider />
                  <Finish>
                    <MoneyTitle>총 주문금액</MoneyTitle>
                    <AllMoney>{Calculate()}원</AllMoney>
                  </Finish>
                </ModalContent>
              </>
            )}
          </Content>
          <Carousel></Carousel>
        </Card>
        <CloseButton
          className="close"
          onMouseEnter={MouseEnter}
          onMouseLeave={MouseLeave}
          onClick={Click}
        >
          {close}
        </CloseButton>
      </ModalCard>
    </ModalBackground>
  );
};
const AllMoney = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 32px;
  line-height: 46px;
  width: 140px;
  text-align: right;
`;
const MoneyTitle = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 18px;
  line-height: 26px;
  color: #828282;
`;
const Finish = styled.div`
  display: flex;
  justify-content: flex-end;
  align-items: center;
  width: 440px;
  padding: 32px 0;
`;
const DownButton = styled.button`
  display: block;
  width: 30px;
  height: 25px;
  border: 1px solid #e0e0e0;
  background-color: white;
  outline: none;
  padding: 0;
  margin: 0;
  &:active {
    transform: translateY(0.5px);
  }
`;
const UpButton = styled.button`
  display: block;
  width: 30px;
  height: 25px;
  border: 1px solid #e0e0e0;
  background-color: white;
  outline: none;
  padding: 0;
  margin: 0;
  &:active {
    transform: translateY(0.5px);
  }
`;

const Counter = styled.div`
  display: flex;
  justify-content: center;
  height: 50px;
`;
const CounterButton = styled.div`
  height: 23px;
`;
const Number = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 8px 0;
  border: 1px solid #e0e0e0;
  border-right: none;
  margin: 0;
  width: 60px;
`;

const ProductCounter = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 25px 0;
  width: 440px;
`;
const ImageInformation = styled.div`
  padding-bottom: 28px;
`;
const Information = styled.div`
  padding: 24px 0;
  width: 440px;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: normal;
  font-size: 16px;
  line-height: 23px;
`;
const InformationTitle = styled.div`
  color: #828282;
  width: 60px;
  margin-right: 16px;
`;
const InformationContent = styled.div`
  color: #4f4f4f;
  word-break: normal;
  width: 360px;
`;
const Subheading = styled.div`
  display: flex;
  ${({ middle }) => (middle ? "padding:16px 0;" : null)}
`;

const Divider = styled.div`
  width: 440px;
  height: 1px;
  border: 1px solid #e0e0e0;
`;

const ModalContent = styled.div`
  position: absolute;
  top: 48px;
  left: 480px;
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
const Nprice = styled.span`
  ${({ props }) =>
    props.length === 1
      ? `width: 73px;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 20px;
  line-height: 29px;
  margin: 0 8px 0 0;`
      : `width: 48px;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: normal;
  font-size: 14px;
  line-height: 20px;
  text-decoration-line: line-through;
  color: #bdbdbd;
  margin: 0 8px;`}
`;
const Sprice = styled.span`
  width: 73px;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 20px;
  line-height: 29px;
  margin: 0 8px 0 0;
`;
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
  padding: 16px 0 23px 0;
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

const CloseButton = styled.button`
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
