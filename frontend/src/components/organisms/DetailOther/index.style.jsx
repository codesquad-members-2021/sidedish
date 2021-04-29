import styled from 'styled-components';

const WrapMain = styled.div`
  display: flex;
  flex-direction: column;
`;

const WrapCarousal = styled.div`
  display: flex;
`;

const WrapCard = styled.div`
  display: flex;
  justify-content: center;
  min-width: ${props => props._slideWidth}px;
  width: ${props => props._slideWidth}px;
  height: ${props => props._imgHeight}px;
  overflow: hidden;
`;

const CardStyle = styled.div`
  display: flex;
  justify-content: center;
  padding: 0px;
`;

export { CardStyle, WrapCard, WrapMain, WrapCarousal };
