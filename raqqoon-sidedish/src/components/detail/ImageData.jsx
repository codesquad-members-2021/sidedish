import styled from 'styled-components';

const TopImg = ({ img }) => {
  return (
    <TopImgDiv>
      <img src={img} alt={img} />
    </TopImgDiv>
  );
};
const ThumbImg = ({ img }) => {
  return (
    <ThumbImgDiv>
      <img src={img} alt={img} />
    </ThumbImgDiv>
  );
};

const DetailImg = ({ location, img }) => {
  return {
    top: <TopImg {...{ img }} />,
    thumb: <ThumbImg {...{ img }} />,
  }[location];
};

export default DetailImg;

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
  border-radius: 5px;

  img {
    width: 72px;
    height: 72px;
    border-radius: 5px;
  }
`;
