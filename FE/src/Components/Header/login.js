import React from "react";
import styled from "styled-components";

const login = ({ setLoginModal }) => {
  return (
    <ModalBackground>
      <ModalCard>
        <Card></Card>
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
  align-items: center;
`;
const ModalCard = styled.div`
  position: fixed;
  top: 300px;
  display: flex;
  width: 500px;
  height: 660px;
  background-color: transparent;
`;

const Card = styled.div`
  width: 960px;
  background-color: white;
`;

export default login;
