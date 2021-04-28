import React from 'react';
import styled from 'styled-components';

const SpecialLabelTag = ({ badge }) => {
  return (
    <SpecialLabel badge={badge}>
      {badge}
    </SpecialLabel>
  );
};

const specialLabelColor = {
  이벤트특가: "#82D32D",
  론칭특가: "#86C6FF",
  베스트: "#ed5151"
}

const SpecialLabel = styled.span`
  display: inline-block;
  padding: 4px 16px;
  margin: 0 10px 0 0;
  background: ${({ badge }) => specialLabelColor[badge]};
  font-size: 14px;
  font-weight: 700;
  line-height: 20px;
  color: #fff;
  border-radius: 5px;
`;

export default SpecialLabelTag;
