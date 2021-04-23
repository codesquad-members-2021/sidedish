import React from 'react';
import styled from 'styled-components';
import Content from '../Main/Content';
const ContentWrapper = styled.div`
  display: ${props => props.active ? "block" : "none"};
  background-color: #EEF4FA;
  border-radius: 0px 5px 5px 5px;
  padding: 20px;
  width: 100%;
  height: 100%;
`;
const CardBlock = styled.div`
  display: flex;
  justify-content: space-between;
`;
const ContentContainer = styled.div`
    width: 1280px;
    height: 620px;
    flex-grow: 1;
`;
const TabContent = ({Food, setFood, toggleState}) => {
    return (
      <ContentContainer>
        {Food.map( (_, idx) =>  {
          return (<ContentWrapper toggleState={toggleState} active={toggleState === (idx + 1)}>
          <h2>Content {idx+1}</h2>
          <CardBlock>
            {Food[idx].items.map(v => <Content {...v} />)}
          </CardBlock>
        </ContentWrapper>)
        })}
      </ContentContainer>
    );
}

export default TabContent;
