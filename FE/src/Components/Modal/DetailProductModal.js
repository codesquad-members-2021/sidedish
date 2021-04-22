import React from 'react';
import styled from 'styled-components';
import closeImage from '../../images/close.svg';
import LeftSide from './LeftSide/LeftSide';
import RightSide from './RightSide/RightSide';
import BottomSide from './BottomSide/BottomSide';

const DetailProductModal = () => {
  return (
    <Background>
      <ModelWrapper>
        <div>
          <TopSide>
            <LeftSide />
            <RightSide />
          </TopSide>
          <BottomSide />
        </div>
        <CloseButton src={closeImage} alt="" />
      </ModelWrapper>
    </Background>
  );
};

const Background = styled.div`
  position: fixed;
  display:flex;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1;
  background: rgba(0, 0, 0, 0.6);
`;

const ModelWrapper = styled.div`
  display:flex;
  width:  1000px ;
  height: 1076px;
  margin: 0 auto;
  align-self: center;
  transform: scale(0.8);
`;

const TopSide = styled.div`
  display: flex;
  width: 960px;
  height: 680px;
  padding: 48px;
  box-sizing: border-box;
  background: #fff;
  border-radius: 5px 5px 0px 0px;
`;

const CloseButton = styled.img`
  margin: 0 0 auto auto;
  &:hover{
    cursor:pointer;
  }
`;

export default DetailProductModal;