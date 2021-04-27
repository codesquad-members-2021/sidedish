import React, { useState } from "react";
import { WrapDiv, WrapContent } from "./index.style";
import HoverCard from "../../molecules/HoverCard";
import Image from "../../atoms/Image";
import Span from "../../atoms/Span";
import TagBox from '../../molecules/TagBox';

const LargeCard = ({ children, ...props }) => {
  const [isHover, setIsHover] = useState(false);

  return (
    <WrapDiv>
      <Image
        src={props._image}
        _width="384px"
        onMouseEnter={() => setIsHover(true)}
      />
      <HoverCard
        _width="384px"
        _height="384px"
        isHover={isHover}
        onMouseLeave={() => setIsHover(false)}
      />
      <Span _title>{props._title}</Span>
      <Span _description>{props._description}</Span>
      <WrapContent>
        <Span _sPrice>{props._sPrice}</Span>
        <Span _nPrice>{props._nPrice}</Span>
      <TagBox _badge={props._badge} />
    </WrapDiv>
  );
};

export default LargeCard;
