import React from 'react';
import styled from 'styled-components';
import Image from '../../atoms/Image';

const ImageWrapper = styled.div`
  display: flex;
`;

const InfoImages = ({ children, ...props }) => {
  const images = props._thumb_images.map((url, i) => {
    <Image key={i} src={url} />;
  });

  return (
    <ImageWrapper>
      <images />
    </ImageWrapper>
  );
};

export default InfoImages;
