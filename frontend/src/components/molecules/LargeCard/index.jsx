import React, { useState } from "react";
import styled from "styled-components";
import HoverCard from "../../molecules/HoverCard";
import Image from "../../atoms/Image";
import Span from "../../atoms/Span";
import Tag from "../../atoms/Tag";

const Div = styled.div`
  display: flex;
  flex-direction: column;
  position: relative;
  width: 380px;
  height: 380px;
  margin: 0px 12px;
`;

const FlexDiv = styled.div`
  display: flex;
  justify-content: flex-start;
  margin: 8px 0;
`;

const LargeCard = ({ children, ...props }) => {
  const [isHover, setIsHover] = useState(false);

  const TagType = () => {
    if (!props._badge) return <></>;
    if (props._badge.length === 1) {
      return props._badge[0] === "론칭특가" ? <Tag _new /> : <Tag _event />;
    } else if (props._badge.length === 2) {
      return (
        <>
          <Tag _new />
          <Tag _event />
        </>
      );
    }
    return <></>;
  };
  return (
    <Div>
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
      <FlexDiv>
        <Span _sPrice>{props._sPrice}</Span>
        <Span _nPrice>{props._nPrice}</Span>
      </FlexDiv>
      <FlexDiv>
        <TagType />
      </FlexDiv>
    </Div>
  );
};

export default LargeCard;
