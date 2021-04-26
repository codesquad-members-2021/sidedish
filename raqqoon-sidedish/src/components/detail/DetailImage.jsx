import styled from 'styled-components';
import ImageData from 'components/detail/ImageData';
import { LOCATION_TOP, LOCATION_THUMB } from 'const';
import { v4 as uuidv4 } from 'uuid';

const DetailImage = ({ top_image, thumb_images }) => {
  return (
    <DetailImgBox>
      <LargeImgBoxDiv>
        <ImageData location={LOCATION_TOP} img={top_image} />
      </LargeImgBoxDiv>
      <SmallImgBoxDiv>
        {thumb_images.map((img) => (
          <ImageData location={LOCATION_THUMB} img={img} key={uuidv4()} />
        ))}
      </SmallImgBoxDiv>
    </DetailImgBox>
  );
};

export default DetailImage;

const DetailImgBox = styled.div`
  width: fit-content;
`;

const LargeImgBoxDiv = styled.div``;

const SmallImgBoxDiv = styled.div`
  display: flex;
  justify-content: space-between;
  margin-top: 8px;
`;
