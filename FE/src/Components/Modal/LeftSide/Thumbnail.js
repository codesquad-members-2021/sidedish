import React from 'react';
import styled from 'styled-components';
import preparingImage from 'images/preparingImage.jpg';

const Thumbnail = ({ thumbnailSource }) => {
  return (
    <ThumbnailWrapper>
      <ThumbnailImage src={thumbnailSource} onError={(e) => e.target.src = preparingImage} />
    </ThumbnailWrapper>
  );
};

const ThumbnailWrapper = styled.div`
  width: 100%;
  height: 392px;
  margin-bottom: 8px;
  border-radius: 5px;
  background: #f5f5f7;
`;

const ThumbnailImage = styled.img`
  width: 100%;
  height: 100%;
  border-radius:5px;
`;

export default Thumbnail;
