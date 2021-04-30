import React, { useState, useEffect } from "react";
import { WrapDiv, WrapContent } from "./index.style";
import getComma from "../../../util/getComma";
import HoverCard from "../../molecules/HoverCard";
import Image from "../../atoms/Image";
import Span from "../../atoms/Span";
import TagBox from "../../molecules/TagBox";
import Details from "../../pages/Details";

const MediumCard = ({ children, ...props }) => {
  const [isHover, setIsHover] = useState(false);
  const [isOpen, setIsOpen] = useState(false);

  const onClick = () => setIsOpen(true);
  const onClose = () => {
    setIsOpen(false);
  };
  console.log(2);
  useEffect(() => {
    console.log(1);
  }, [isOpen]);
  return (
    <>
      <Details open={isOpen} onClose={onClose} _hash={props._hash} />
      <WrapDiv onClick={onClick}>
        <Image
          src={props._image}
          _width="308px"
          onMouseEnter={() => setIsHover(true)}
        />
        <HoverCard
          _width="308px"
          _height="308px"
          isHover={isHover}
          onMouseLeave={() => setIsHover(false)}
        />
        <Span className="_title">{props._title}</Span>
        <Span className="_description">{props._description}</Span>
        <WrapContent>
          <Span className="_sPrice">{getComma(props._sPrice)}원</Span>
          <Span className="_nPrice">{getComma(props._nPrice)}</Span>
        </WrapContent>
        <TagBox _badge={props._badge} />
      </WrapDiv>
    </>
  );
};

export default MediumCard;
