import React from 'react';
import styled from 'styled-components';

import { Container } from '../commons/base.js';
import Card from '../commons/Card';

const Tabs = () => {

  return (
    <TabsWrapper>
      <TabsTitle>후기가 증명하는 베스트 반찬</TabsTitle>
      <div>
        <label>
          <RadioButton type="radio" name="best_dish" />
          <LabelBelongSpan>할인특가 세트상품</LabelBelongSpan>
        </label>
        <label>
          <RadioButton type="radio" name="best_dish" />
          <LabelBelongSpan>풍성한 고기반찬</LabelBelongSpan>
        </label>
        <label>
          <RadioButton type="radio" name="best_dish" />
          <LabelBelongSpan>편리한 반찬세트</LabelBelongSpan>
        </label>
        <label>
          <RadioButton type="radio" name="best_dish" />
          <LabelBelongSpan>간편한 덮밥요리</LabelBelongSpan>
        </label>
        <label>
          <RadioButton type="radio" name="best_dish" />
          <LabelBelongSpan>우리아이 영양반찬</LabelBelongSpan>
        </label>
      </div>
      <CardListWrapper>
        <Card></Card>
        <Card></Card>
        <Card></Card>
      </CardListWrapper>
    </TabsWrapper>
  );
};

const TabsWrapper = styled(Container)``;

const LabelBelongSpan = styled.span`
  display: inline-flex;
  padding: 16px 32px;
  margin: 0 10px 0 0;
  background:#F5F5F7;
  font-size: 18px;
  line-height: 26px;
  align-items: center;
  justify-content: center;
  cursor: pointer;
`;

const RadioButton = styled.input`
  display: none;
  &:checked+span{
    background: #EEF4FA;
    font-weight:700;
  }
`;

const TabsTitle = styled.div`
  font-weight: 700;
  font-size: 24px;
  margin: 0 0 32px 0;
`;

const CardListWrapper = styled.div`
  display: flex;
  width: 1280px;
  height: 620px;
  padding: 40px;
  box-sizing:border-box;
  justify-content: space-between;
  background: #EEF4FA;
`;


export default Tabs;
