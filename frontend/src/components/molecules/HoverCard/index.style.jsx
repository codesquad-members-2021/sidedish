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
  margin: 16px;
  background: #ffffff;
`;
const WrapTitle = styled.div`
  display: flex;
  position: relative;
  top: 40%;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  /* align-items: center; */
  /* margin: 140px 148px; */
`;

export { WrapDiv, LineDiv, WrapTitle };
