import styled from 'styled-components';

const TopImg = () => {
  return <TopImgDiv>Big Img</TopImgDiv>;
};
const ThumbImg = () => {
  return <ThumbImgDiv>Small Img</ThumbImgDiv>;
};

const DetailImg = ({ location }) => {
  return {
    top: <TopImg />,
    thumb: <ThumbImg />,
  }[location];
};

export default DetailImg;

const TopImgDiv = styled.div`
  border: 1px solid red;
  width: 392px;
  height: 392px;
  border-radius: 5px;
`;

const ThumbImgDiv = styled.div`
  border: 1px solid blue;
  width: 72px;
  height: 72px;
  border-radius: 5px;
`;
