import React, { useEffect, useState } from 'react';
import styled from 'styled-components';
import API from 'util/API.js';
import { Container } from 'Components/commons/base.js';
import Card from 'Components/commons/Cards';

const Tabs = ({ setModalState }) => {
  const [tabItemList, setTabItemList] = useState([]);
  const [currentTabItems, setCurrentTabItems] = useState([]);

  const handleChangeTabs = ({ idx }) => () => {
    setCurrentTabItems(tabItemList[idx].items);
  };

  useEffect(() => {
    (async () => {
      try {
        const { body } = await API.get.best();
        setTabItemList(body);
      } catch (e) {
        console.error(e);
      }
    })();
  }, []);

  useEffect(() => {
    if (tabItemList[0]) {
      setCurrentTabItems(tabItemList[0].items);
    }
  }, [tabItemList]);

  return (
    <TabsWrapper>
      <TabsTitle>후기가 증명하는 베스트 반찬</TabsTitle>
      <FlexWrapper>
        {tabItemList.map(({ name }, idx) => {
          return (
            <label key={idx}>
              <RadioButton type="radio" name="best_dish" defaultChecked={idx === 0} onClick={handleChangeTabs({ idx })} />
              <LabelBelongSpan>{name}</LabelBelongSpan>
            </label>
          );
        })}
      </FlexWrapper>
      <CardListWrapper>
        {currentTabItems.map((item, idx) => {
          return (<Card key={idx} type={"tabs"}  {...{ item, setModalState }} />);
        })}
      </CardListWrapper>
    </TabsWrapper>
  );
};

const TabsWrapper = styled(Container)``;

const FlexWrapper = styled.div`
  display:flex;
`;

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
  max-width: 1280px;
  max-height: 620px;
  padding: 40px;
  box-sizing:border-box;
  justify-content: space-between;
  background: #EEF4FA;
`;


export default Tabs;
