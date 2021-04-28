import styled from 'styled-components';

const DetailCarouselTitle = () => {
  return (
    <DetailCarouselTitleBox>{`함께하면 더욱 맛있는 상품`}</DetailCarouselTitleBox>
  );
};

export default DetailCarouselTitle;

const DetailCarouselTitleBox = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: 700;
  font-size: 24px;
  line-height: 35px;
  color: #333333;
  margin: 10px;
`;
