import styled from 'styled-components';

const WrapDiv = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  width: 308px;
  height: 412px;
  margin: 0px 8px;
  div,
  span {
    cursor: pointer;
  }
`;

const WrapContent = styled.div`
  display: flex;
  justify-content: flex-start;
`;

export { WrapDiv, WrapContent };
