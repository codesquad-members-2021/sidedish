import React, { useState } from 'react';
import { WrapDiv, WrapContent } from './index.style';
import HoverCard from '../../molecules/HoverCard';
import Image from '../../atoms/Image';
import Span from '../../atoms/Span';
import TagBox from '../../molecules/TagBox';
import Modal from '../../pages/Modal';

const MediumCard = ({ children, ...props }) => {
  const [isHover, setIsHover] = useState(false);
  const [isOpen, setIsOpen] = useState(false);

  const onClick = () => setIsOpen(true);
  const onClose = () => {
    setIsOpen(false);
  };
  return (
    <>
      <Modal open={isOpen} onClose={onClose} _hash={props._hash} />
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
          <Span className="_sPrice">{props._sPrice}</Span>
          <Span className="_nPrice">{props._nPrice}</Span>
        </WrapContent>
        <TagBox _badge={props._badge} />
      </WrapDiv>
    </>
  );
};

export default MediumCard;
