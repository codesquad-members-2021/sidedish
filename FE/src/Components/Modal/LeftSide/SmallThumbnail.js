import React from 'react';
import styled from 'styled-components';

const SmallThumbnail = ({ imgSources, handleChange }) => {
  return (
    <SmallThumbnailWrapper >
      {imgSources && imgSources.map((img, idx) => {
        return (
          <label key={idx}>
            <RadioButton
              type="radio"
              name="small-thumbnail"
              onChange={() => { handleChange({ src: img }) }}
              disabled={!img}
              defaultChecked={idx === 0}
            />
            <SmallThumbnailImage src={img} />
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
