import React from 'react';
import Image from '../../atoms/Image';
import Span from '../../atoms/Span';

const OtherCard = ({ children, ...props }) => {
  return (
    <div>
      <Image src={props._image} _width="160px" />
      <Span className="_login" _margin="8px 0px">
        {props.product_description}
      </Span>
      <Span className="_otherPrice" _margin="8px 0px">
        {props.point}
      </Span>
    </div>
  );
};

export default OtherCard;
