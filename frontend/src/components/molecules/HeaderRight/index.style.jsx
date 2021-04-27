import styled from "styled-components";

const WrapDiv = styled.div`
  display: flex;
  /* margin: 32px 100px 80px 80px; */
  margin: 32px 0 80px 0;
  min-width: 700px;
  align-items: flex-end;
  justify-content: flex-end;
  padding: 0 120px;
`;

const Li = styled.li`
  list-style-type: none;
  float: left;
  padding: 11px 0;
`;

export { WrapDiv, Li };
