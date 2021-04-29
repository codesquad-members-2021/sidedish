import React, { useEffect, useReducer, useState } from 'react';
import styled from 'styled-components';
import API from 'util/API.js';
import { Container } from 'Components/commons/base.js';
import Card from 'Components/commons/Cards';
import { reducer, reducerInitialState } from 'util/reducer';
import loadingImage from 'images/loading.gif';
import errorImage from 'images/preparingProduct.png';

const Tabs = ({ dispatchModal }) => {
  const [tabItemState, dispatchTabItem] = useReducer(reducer, reducerInitialState);
  const [currentTabItems, setCurrentTabItems] = useState([]);
  const { loading, data, error } = tabItemState;

  const handleChangeTabs = ({ idx }) => () => {
    setCurrentTabItems(data[idx].items);
  };

  useEffect(() => {
    const fetchBestProduct = async () => {
      dispatchTabItem({ type: 'LOADING' });
      try {
        const { body } = await API.get.best();
        dispatchTabItem({ type: 'SUCCESS', data: body });
      } catch (e) {
        dispatchTabItem({ type: 'ERROR', error: e });
      }
    };
    fetchBestProduct();
  }, []);

  useEffect(() => {
    if (data) setCurrentTabItems(data[0].items);
  }, [data]);

  return (
    <TabsWrapper>
      {loading &&
        <div>
          <img src={loadingImage} alt="" width='100%' />
        </div>
      }

      {data && <>
        <TabsTitle>후기가 증명하는 베스트 반찬</TabsTitle>
        <FlexWrapper>
          {data?.map(({ name }, idx) => {
            return (
              <label key={`label-${idx}`}>
                <RadioButton type="radio" name="best_dish" defaultChecked={idx === 0} onClick={handleChangeTabs({ idx })} />
                <LabelBelongSpan>{name}</LabelBelongSpan>
              </label>
            );
          })}
        </FlexWrapper>
        <CardListWrapper>
          {currentTabItems.map((item, idx) => {
            return (<Card key={`card-${idx}`} type={"tabs"}  {...{ item, dispatchModal }} />);
          })}
        </CardListWrapper>
      </>}

      {error &&
        <div>
          <img src={errorImage} alt="" width="100%" />
        </div>
      }
    </TabsWrapper>
  );
};

const TabsWrapper = styled(Container)``;

const FlexWrapper = styled.div`
  display:flex;

  label + label {
    margin-left: 10px;
  }

`;

const LabelBelongSpan = styled.span`
  height: 100%;
  padding: 16px 32px;
  background:#F5F5F7;
  box-sizing: border-box;
  
  font-size: 18px;
  line-height: 26px;
  
  display: inline-flex;
  justify-content: center;
  align-items: center;
  
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
