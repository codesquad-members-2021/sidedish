import React, { useState, useEffect } from 'react';
import styled from 'styled-components'

const StyledPreview = styled.div`
  flex: 0 0 47%;
  box-sizing: border-box;
  padding: 16px;
`;

const SelectedImg = styled.img`
  width: 100%;
  height: 203px;
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
  }

  &.no-img {
    background-color: lightgray;
  }

  &.select > img {
    border: 1.5px solid #82D32D;
  }

  &:hover {
    opacity: 0.8;
  }
`;

function Preview({ imgs, defaultListSize = 5 }) {
  const [selectedImgIdx, setSelectedImgIdx] = useState(0);
  const [imgListData, setImgListData] = useState([]);

  useEffect(() => {
    // TODO: fetch img dat1a;
    const res = imgs;
    setImgListData(res);
  }, []);
  
  const handleClickImg = (newSelectedImgIdx) => {
    // FIXME: fix not to use 'idx' when the 'id' is enable.
    if (selectedImgIdx === newSelectedImgIdx)
      return;

    setSelectedImgIdx(newSelectedImgIdx);
  };

  const renderImgs = () => {
    // FIXME: modify 'key' not to be 'idx'
    const list = imgListData.map((img, idx) =>
      <ImgListItem
        key={idx}
        className={idx === selectedImgIdx ? "select" : ""}
        onClick={() => handleClickImg(idx)}>
        <img src={img}/>
      </ImgListItem>
    );

    let nextIdx = list.length;

    while (list.length < defaultListSize)
      list.push(<ImgListItem key={nextIdx++} className="no-img"/>)

    return list;
  };

  return (
    <StyledPreview>
      <SelectedImg src={imgListData[selectedImgIdx]}/>
      <ImgList onClickCapture={() => handleClickImg}>
        {renderImgs()}
      </ImgList>
    </StyledPreview>
  );
};

export default Preview;
