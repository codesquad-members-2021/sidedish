import styled, { css } from 'styled-components';

const TopImg = ({ img }) => {
  return (
    <TopImgDiv>
      <img src={img} alt={img} />
    </TopImgDiv>
  );
};
const ThumbImg = ({
  img,
  setActiveTopImage,
  activeBorder,
  setActiveBorder,
}) => {
  const handleClickThumbImage = () => {
    if (!img) return null;
    setActiveTopImage(img);
    // setActiveBorder(true);
  };

  return (
    <ThumbImgDiv
      img={img}
      onClick={handleClickThumbImage}
      activeBorder={activeBorder}
    >
      <img src={img} alt={img} />
    </ThumbImgDiv>
  );
};

const ImageData = ({
  location,
  img,
  setActiveTopImage,
  activeBorder,
  setActiveBorder,
}) => {
  return {
    top: <TopImg {...{ img }} />,
    thumb: (
      <ThumbImg
        {...{ img, setActiveTopImage, activeBorder, setActiveBorder }}
      />
    ),
  }[location];
};

export default ImageData;

const TopImgDiv = styled.div`
  width: 392px;
  height: 392px;
  border-radius: 5px;
  img {
    width: 392px;
    height: 392px;
    border-radius: 5px;
  }
`;

const ThumbImgDiv = styled.div`
  width: 72px;
  height: 72px;
  cursor: ${(props) => props.img !== null && `pointer`};
  background: #f5f5f7;
  border-radius: 5px;

  img {
    height: 72px;
    border-radius: 5px;
    ${(props) =>
      props.activeBorder &&
      css`
        border: 2px solid #82d32d;
      `}

    &:hover {
      border: 2px solid #82d32d;
    }
  }
`;
