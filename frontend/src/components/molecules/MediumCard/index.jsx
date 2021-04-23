import React from "react";
import styled from "styled-components";
import Image from "../../atoms/Image";
import Span from "../../atoms/Span";
import Tag from "../../atoms/Tag";

const Div = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  width: 308px;
  height: 412px;
  margin: 0px 16px;
`;

const FlexDiv = styled.div`
  display: flex;
  justify-content: flex-start;
`;

const MediumCard = ({ children, ...props }) => {
  const TagType = () => {
    if (props._badge) {
      return props.badge === '["론칭특가"]' ? <Tag _new /> : <Tag _event />;
    }
    return <></>;
  };
  return (
    <Div>
      <Image src={props._image} />
      <Span _title>{props._title}</Span>
      <Span _description>{props._description}</Span>
      <FlexDiv>
        <Span _sPrice>{props._sPrice}</Span>
        <Span _nPrice>{props._nPrice}</Span>
      </FlexDiv>
      <TagType />
    </Div>
  );
};

export default MediumCard;
