import React from 'react';
import styled from 'styled-components';
import Image from '../../atoms/Image';

const ImageWrapper = styled.div`
  display: flex;
  margin: 8px 0;
`;

const InfoImages = ({ _thumb_images, ...props }) => {
  if (!_thumb_images) return null;

  const thumbnails = _thumb_images;

  const onClick = ({ target }) => {
    props.setTopImage(target.src);
  };

  const Images = () => {
    return thumbnails.map((url, i) => {
      return (
        <Image
          onClick={onClick}
          key={i}
          src={url}
          _width="72px"
          _margin="0 8px 0 0"
        />
      );
    });
  };

  return (
    <ImageWrapper>
      <Images />
    </ImageWrapper>
  );
};

export default InfoImages;
