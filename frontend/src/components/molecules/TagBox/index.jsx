import React from 'react';
import styled from 'styled-components';
import Tag from '../../atoms/Tag';

const TagWrapper = styled.div`
  display: flex;
`;

const TagBox = props => {
  const tagType = {
    이벤트특가: '_event',
    론칭특가: '_new',
  };

  if (props._badge) {
    return (
      <TagWrapper>
        {props._badge.map(tag => {
          const tagName = tagType[tag];
          return <Tag className={tagName}>{tag}</Tag>;
        })}
      </TagWrapper>
    );
  }
  return null;
};

export default TagBox;
