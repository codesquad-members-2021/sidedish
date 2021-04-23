import styled from 'styled-components';

const WrapMain = styled.div`
  display: flex;
`;

const WrapCard = styled.div`
  display: flex;
  justify-content: center;
  width: 1280px;
  height: 479px;
  overflow: hidden;
`;

const CardStyle = styled.div`
  display: flex;
  justify-content: center;
  padding: 0px;
  transition: all 1s;
  // transform: translate(308px);
  width: 2576px;
  height: 479px;
`;

export { CardStyle, WrapCard, WrapMain };
