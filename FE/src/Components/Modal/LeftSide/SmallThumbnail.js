import React, { useState, useEffect } from 'react';
import styled from 'styled-components';

const SmallThumbnail = ({ handleChange }) => {
  const [imgSources, setImgSources] = useState();

  useEffect(() => {
    // API
    const imgs = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBoMjfF0Gz8A7H-B7xVID5XypyTO0g8AA22yWaX2MQpF6TPNlz6YdLhoe9kXbX8T9Qbeg&usqp=CAU",
      "https://codesquad.kr/img/company/joblist/lezhin.png",
      "http://image.kmib.co.kr/online_image/2020/0101/611414110014085644_1.jpg",
      "",
      ""
    ]

    setImgSources([...imgs])
  }, []);


  return (
    <SmallThumbnailWrapper >
      {imgSources && imgSources.map((img, idx) => {
        return (
          <label>
            <RadioButton type="radio" name="small-thumbnail" disabled={false} />
            <SmallThumbnailImage src={img} onChange={() => { handleChange({ src: img }) }} />
          </label>
        )
      })}

    </SmallThumbnailWrapper >
  );
};

const SmallThumbnailWrapper = styled.div`
  display: flex;
  width: 100%;
  height: 72px;
  justify-content: space-between;
`;

const RadioButton = styled.input`
  display: none;
  &:checked+img{
    box-shadow: 0 0 0 2pt #82D32D;
  }
`;

const SmallThumbnailImage = styled.img`
  width: 72px;
  height: 72px;
  background: #f5f5f7;
  border-radius: 5px;
  &:hover{
    cursor:pointer;
  }
`;

export default SmallThumbnail;
