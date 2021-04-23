import React from 'react';
import styled from 'styled-components';

// 탭들 영역
const TabsBlock = styled.div`
  display: flex;
  flex-direction: row;
  align-items: flex-start;
`;
const Btn = styled.button`
  font-size: 18px;
  border: none;
`;
const TabBtn = styled(Btn)`
  background-color: ${props => props.active ? "#eef4fa;" : "#f5f5f7"};
  border-radius: 5px 5px 0px 0px;
  padding: 16px 32px;
  text-align: center;
  margin-right: 8px;
  cursor: pointer;
  box-sizing: content-box;
  position: relative;
  outline: none;
`;
const TabButton = ({Food, setFood, toggleState, toggleTab}) => {
    return (
      <TabsBlock>
        {Food.map( (v, idx) =>  {
          return (<TabBtn toggleState={toggleState} active={toggleState === (idx + 1)} onClick={() => toggleTab(idx+1)}>
          {v.name}
        </TabBtn>)
        })}
      </TabsBlock> 
    );
}

export default TabButton;
