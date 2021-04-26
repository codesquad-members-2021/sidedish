import React, { useState, useEffect } from 'react';
import styled from 'styled-components';

const StyledPreview = styled.div`
  flex: 0 0 47%;
  display: flex;
  flex-direction: column;
  align-items: center;
  box-sizing: border-box;
  padding-right: 20px;
`;

const SelectedImg = styled.img`
  width: 100%;
  height: 297px;
  margin-bottom: 3px;
  border-radius: 5px;
`;

const ImgList = styled.ul`
  display: flex;
  text-align: left;
`;

const ImgListItem = styled.li`
  flex: 1;
  border-radius: 5px;

  & + & {
    margin-left: 3px;
  }

  & > img {
    width: 100%;
    height: 100%;
    box-sizing: border-box;
    border-radius: inherit;
    pointer-events: none;
    /* z-index: -1; */
  }

  &.no-img {
    background-color: lightgray;
  }

  &.select > img {
    border: 2px solid #82D32D;
  }

  &:hover {
    opacity: 0.8;
  }
`;

function Preview({ imgUrls, defaultListSize = 5 }) {
  const [selectedImgIdx, setSelectedImgIdx] = useState(0);
  
  const handleClickImg = ({ target }) => {
    console.log(selectedImgIdx, target.dataset.idx);
    if (!target.dataset.idx || selectedImgIdx === Number(target.dataset.idx))
      return;

    setSelectedImgIdx(Number(target.dataset.idx));
  };

  const renderImgs = () => {
    // FIXME: modify 'key' not to be 'idx'
    const imgs = imgUrls.map((url, idx) =>
      <ImgListItem
        key={idx}
        data-idx={idx}
        className={idx === selectedImgIdx ? 'select' : ''}>
        <img src={url}/>
      </ImgListItem>
    );

    let nextIdx = imgs.length;

    while (imgs.length < defaultListSize)
      imgs.push(<ImgListItem key={nextIdx++} className='no-img'/>)

    return imgs;
  };

  return (
    <StyledPreview>
      <SelectedImg src={imgUrls[selectedImgIdx]}/>
      <ImgList onClickCapture={handleClickImg}>
        {renderImgs()}
      </ImgList>
    </StyledPreview>
  );
};

export default Preview;
