import React from 'react';
import styled from 'styled-components';
const ContentWrapper = styled.div`
  display: ${props => props.active ? "block" : "none"};
  background-color: #EEF4FA;
  border-radius: 0px 5px 5px 5px;
  padding: 20px;
  width: 100%;
  height: 100%;
`;
const ContentContainer = styled.div`
    flex-grow: 1;
`;
const TabContent = ({toggleState}) => {
    return (
      <ContentContainer>
        {[...Array(5)].map( (_, idx) =>  {
          return (<ContentWrapper toggleState={toggleState} active={toggleState === (idx + 1)}>
          <h2>Content {idx+1}</h2>
        </ContentWrapper>)
        })}
      </ContentContainer>
    );
}

export default TabContent;
