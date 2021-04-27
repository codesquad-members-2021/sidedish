import React from "react";
import styled from "styled-components";
import Image from "../../atoms/Image";
import Span from "../../atoms/Span";
import Tag from "../../atoms/Tag";

const Div = styled.div`
  display: flex;
  flex-direction: column;
  width: 380px;
  height: 540px;
  margin: 0px 12px;
`;

const FlexDiv = styled.div`
  display: flex;
  justify-content: flex-start;
  margin: 8px 0;
`;

const LargeCard = ({ children, ...props }) => {
  const TagType = () => {
    if (props._badge) {
      return props.badge === '["론칭특가"]' ? <Tag _new /> : <Tag _event />;
    }
    return <></>;
  };
  return (
    <Div>
      <Image src={props._image} _width="384px" />
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

export default LargeCard;
