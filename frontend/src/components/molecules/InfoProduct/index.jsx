import React from 'react';
import styled from 'styled-components';
import Span from '../../atoms/Span';
import Tag from '../../atoms/Tag';

const PriceWrapper = styled.div`
  display: flex;
  align-items: flex-end;
  padding: 0px;

  width: 255px;
  height: 35px;

  margin: 16px 0px;
`;

const InfoGeneral = ({ children, ...props }) => {
  const TagType = () => {
    if (!props._badge) return <></>;
    if (props._badge.length === 1) {
      return props._badge[0] === '론칭특가' ? <Tag _new /> : <Tag _event />;
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
  //중복코드, 따로 컴포넌트로 빼기
  return (
    <>
      <Span _innerTitle>{props.title}</Span>
      <Span>{props.description}</Span>
      <PriceWrapper>
        <TagType _badge={props._badge}></TagType>
        <Span _sPrice>{props._sPrice}</Span>
        <Span _nPrice>{props._nPrice}</Span>
      </PriceWrapper>
    </>
  );
};

export default InfoGeneral;
