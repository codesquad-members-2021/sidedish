import styled from 'styled-components';
import ImageData from 'components/detail/ImageData';
import { LOCATION_TOP, LOCATION_THUMB } from 'const';

const DetailImage = () => {
  return (
    <DetailImgBox>
      <LargeImgBoxDiv>
        <ImageData location={LOCATION_TOP} />
      </LargeImgBoxDiv>
      <SmallImgBoxDiv>
        <ImageData location={LOCATION_THUMB} />
        <ImageData location={LOCATION_THUMB} />
        <ImageData location={LOCATION_THUMB} />
        <ImageData location={LOCATION_THUMB} />
        <ImageData location={LOCATION_THUMB} />
      </SmallImgBoxDiv>
    </DetailImgBox>
  );
};

export default DetailImage;

const DetailImgBox = styled.div`
  border: 1px solid green;
  width: fit-content;
`;

const LargeImgBoxDiv = styled.div``;

const SmallImgBoxDiv = styled.div`
  display: flex;
  justify-content: space-between;
  margin-top: 8px;
`;
