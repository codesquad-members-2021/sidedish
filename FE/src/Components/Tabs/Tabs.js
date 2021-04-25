import React, { useEffect, useState } from 'react';
import styled from 'styled-components';

import { Container } from '../commons/base.js';
import Card from '../commons/Card';

const Tabs = () => {
  const [tabTitles, setTabTitles] = useState([]);
  useEffect(() => {
    const getTitles = async () => {
      const a = await fetch('/develop/baminchan/best');
      const b = await a.json();
      setTabTitles(b.body);
    }
    getTitles();
  }, []);

  return (
    <TabsWrapper>
      <TabsTitle>후기가 증명하는 베스트 반찬</TabsTitle>
      <div>
        {tabTitles.map(({ name }, idx) => {
          return (
            <label key={idx}>
              <RadioButton type="radio" name="best_dish" defaultChecked={idx === 0} />
              <LabelBelongSpan>{name}</LabelBelongSpan>
            </label>
          );
        })}
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
