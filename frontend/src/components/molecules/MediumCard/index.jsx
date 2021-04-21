import React from 'react';
import styled from 'styled-components';
import Image from '../../atoms/image';
import Span from '../../atoms/span';
import Tag from '../../atoms/tag';

const Div = styled.div`
  display: flex;
  flex-direction: column;
  width: 308px;
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
      <Image />
      <Span _title>{props._title}</Span>
      <Span _description>{props._description}</Span>
      <FlexDiv>
        <Span _nPrice>{props._nPrice}</Span>
        <Span _sPrice>{props._sPrice}</Span>
      </FlexDiv>
      <TagType />
    </Div>
  );
};

export default MediumCard;
