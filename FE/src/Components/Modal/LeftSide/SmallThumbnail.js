import React from 'react';
import styled from 'styled-components';
import defaultImage from 'images/default.png';

const SmallThumbnail = ({ imgSources, handleChangeImageSource }) => {
  return (
    <SmallThumbnailWrapper >
      {imgSources && imgSources.map((img, idx) => {
        return (
          <label key={`smallThumbnail-${idx}`}>
            <RadioButton
              type="radio"
              name="small-thumbnail"
              onChange={handleChangeImageSource({ idx })}
              disabled={!img}
              defaultChecked={idx === 0}
            />
            <SmallThumbnailImage src={img} onError={(e) => e.target.src = defaultImage} />
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
