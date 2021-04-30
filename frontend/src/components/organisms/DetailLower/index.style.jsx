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
  /* justify-content: center; */
  min-width: ${props => props._slideWidth}px;
  width: ${props => props._slideWidth}px;
  height: ${props => props._imgHeight}px;
  overflow: hidden;
  margin: 48px;
`;

const CardStyle = styled.div`
  display: flex;
  justify-content: center;
  padding: 0px;
`;

const PageWrapper = styled.div`
  display: flex;
  justify-content: space-between;
  position: absolute;
  width: 80px;
  top: 51px;
  right: 40px;
`;

export { CardStyle, WrapCard, WrapMain, WrapCarousal, PageWrapper };
