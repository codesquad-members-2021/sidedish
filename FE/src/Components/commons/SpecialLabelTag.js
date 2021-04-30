import React from 'react';
import styled from 'styled-components';

const SpecialLabelTag = ({ badge }) => {
  return (
    <SpecialLabel badge={badge}>
      {badge}
    </SpecialLabel>
  );
};

const specialLabel = {
  이벤트특가: { color: "#82D32D" },
  론칭특가: { color: "#86C6FF" },
  베스트: { color: "#ed5151" }
}

const SpecialLabel = styled.span`
  display: inline-block;
  padding: 4px 16px;
  margin: 0 10px 0 0;
  background: ${({ badge }) => specialLabel[badge]?.color};
  font-size: 14px;
  font-weight: 700;
  line-height: 20px;
  color: #fff;
  border-radius: 5px;
`;

export default SpecialLabelTag;
