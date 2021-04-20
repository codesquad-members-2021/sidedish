import React, { useState, useEffect } from 'react';
import styled from 'styled-components';

const BestTab = ({ id, title, focusedCategory, handleFocusedCategory }) => {
  const [focused, setFocused] = useState(false);

  useEffect(() => {
    focusedCategory === id ? setFocused(true) : setFocused(false);
  }, [focusedCategory]);

  const handleClick = () => {
    handleFocusedCategory(id);
  };

  return (
    <Tab focused={focused} onClick={handleClick}>
      {title}
    </Tab>
  );
};

export default BestTab;

const Tab = styled.div`
  background-color: ${({ focused }) => focused && 'skyblue'};
`;
