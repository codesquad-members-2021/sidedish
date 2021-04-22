import React from 'react';
import styled from 'styled-components';

const SmallThumbnail = () => {
  return (
    <SmallThumbnailWrapper>
      <label>
        <RadioButton type="radio" name="small-thumbnail" />
        <SmallThumbnailImage />
      </label>
      <label>
        <RadioButton type="radio" name="small-thumbnail" />
        <SmallThumbnailImage />
      </label>
      <label>
        <RadioButton type="radio" name="small-thumbnail" />
        <SmallThumbnailImage />
      </label>
      <label>
        <RadioButton type="radio" name="small-thumbnail" />
        <SmallThumbnailImage />
      </label>
      <label>
        <RadioButton type="radio" name="small-thumbnail" />
        <SmallThumbnailImage />
      </label>
    </SmallThumbnailWrapper>
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
    border:1px solid #82D32D;
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
