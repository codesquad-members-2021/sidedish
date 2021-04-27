import React from 'react';
import styled from 'styled-components';
import Tag from '../../atoms/Tag';

const TagWrapper = styled.div`
  display: flex;
`;

const TagBox = props => {
  if (props._badge && props._badge.length === 1) {
    return props._badge[0] === '론칭특가' ? <Tag _new /> : <Tag _event />;
  } else if (props._badge && props._badge.length === 2) {
    return (
      <TagWrapper>
        <Tag _new />
        <Tag _event />
      </TagWrapper>
    );
  }
  return null;
};

export default TagBox;
