import React from 'react';
import styled from 'styled-components';
import Thumbnail from './Thumbnail';
import SmallThumbnail from './SmallThumbnail';

const LeftSide = () => {

  const handleChange = ({ src }) => {

  }

  return (
    <LeftSideWrapper>
      <Thumbnail />
      <SmallThumbnail handleChange={handleChange} />
    </LeftSideWrapper>
  );
};

const LeftSideWrapper = styled.div`
  width: 392px;
  margin-right: 32px;
`;

export default LeftSide;
