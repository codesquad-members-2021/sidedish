import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import Thumbnail from './Thumbnail';
import SmallThumbnail from './SmallThumbnail';

const LeftSide = () => {
  const [thumbnailSource, setThumbnailSource] = useState('');
  const [imgSources, setImgSources] = useState([]);

  const handleChange = ({ src }) => {
    setThumbnailSource(src);
  };

  useEffect(() => {
    // API
    const imgs = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBoMjfF0Gz8A7H-B7xVID5XypyTO0g8AA22yWaX2MQpF6TPNlz6YdLhoe9kXbX8T9Qbeg&usqp=CAU",
      "https://codesquad.kr/img/company/joblist/lezhin.png",
      "http://image.kmib.co.kr/online_image/2020/0101/611414110014085644_1.jpg"
    ];
    const fiveImgs = Object.assign(new Array(5), imgs); //이미지파일이 5개 미만이라도 개수가 5개인 고정된 배열을 만들기..
    setImgSources([...fiveImgs]);
  }, []);

  return (
    <LeftSideWrapper>
      <Thumbnail {...{ thumbnailSource, imgSources }} />
      <SmallThumbnail {...{ imgSources, handleChange }} />
    </LeftSideWrapper>
  );
};

const LeftSideWrapper = styled.div`
  width: 392px;
  margin-right: 32px;
`;

export default LeftSide;
