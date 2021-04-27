import styled from "styled-components";

const WrapDiv = styled.div`
  position: absolute;
  width: ${(props) => props._width};
  height: ${(props) => props._height};
  border-radius: 5px;
  z-index: 10;

  background: linear-gradient(0deg, rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6));
`;
const LineDiv = styled.div`
  width: 89px;
  height: 1px;
  flex-grow: 0;
  margin: 16px 110px;
  background: #ffffff;
`;
const WrapTitle = styled.div`
  display: flex;
  flex-direction: column;
  width: 89px;
  height: 103px;
  align-items: center;
  margin: 140px 148px;
`;

export { WrapDiv, LineDiv, WrapTitle };
