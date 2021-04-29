import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import Thumbnail from 'Components/Modal/LeftSide/Thumbnail';
import SmallThumbnail from 'Components/Modal/LeftSide/SmallThumbnail';

const LeftSide = ({ thumbImages }) => {
  const [thumbnailSource, setThumbnailSource] = useState('');
  const [imgSources, setImgSources] = useState([]);
  const handleChangeImageSource = ({ idx }) => () => {
    setThumbnailSource(imgSources[idx]);
  };

  useEffect(() => {
    const fiveImgs = Object.assign(Array(5).fill(''), thumbImages); //이미지파일이 5개 미만이라도 개수가 5개인 고정된 배열을 만들기..
    setImgSources(fiveImgs);
    setThumbnailSource(fiveImgs[0]);
  }, [thumbImages]);

  return (
    <LeftSideWrapper>
      <Thumbnail {...{ thumbnailSource }} />
      <SmallThumbnail {...{ imgSources, handleChangeImageSource }} />
    </LeftSideWrapper>
  );
};

const LeftSideWrapper = styled.div`
  width: 392px;
  margin-right: 32px;
`;

export default LeftSide;
