import React from "react";
import styled from "styled-components";
import Span from "../../atoms/span";
const WrapDiv = styled.div`
  display: flex;
  /* flex-direction: c; */
  margin: 32px 0 80px 80px;
`;

const Li = styled.li`
  list-style-type: none;
  float: left;
  margin-left: 24px;
  padding: 11px 0;
`;

const HeaderLeft = ({ children, ...props }) => {
  return (
    <WrapDiv>
      <Span _logo _margin="0 56px 0 0">
        BANCHAN
      </Span>
      <ul>
        <Li>
          <Span _title>든든한 메인요리</Span>
        </Li>
        <Li>
          <Span _title>뜨끈한 국물요리</Span>
        </Li>
        <Li>
          <Span _title>정갈한 밑반찬</Span>
        </Li>
      </ul>
    </WrapDiv>
  );
};

export default HeaderLeft;
