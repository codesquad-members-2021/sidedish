import React from 'react';
import styled from 'styled-components';
import Thumbnail from './Thumbnail';
import SmallThumbnail from './SmallThumbnail';

const LeftSide = () => {
  return (
    <LeftSideWrapper>
      <Thumbnail />
      <SmallThumbnail />
    </LeftSideWrapper>
  );
};

const LeftSideWrapper = styled.div`
  width: 392px;
  margin-right: 32px;
`;

export default LeftSide;
