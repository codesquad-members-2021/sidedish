import styled from 'styled-components';
import LeftArrowButtonActive from 'Components/commons/Buttons/LeftArrowButtonActive.js';
import RightArrowButtonActive from 'Components/commons/Buttons/RightArrowButtonActive.js';

const CarouselButton = ({ type, onClick }) => {

  const selectButton = () => {
    switch (type) {
      case "right":
        return <RightArrowButtonActive />;
      case "left":
        return <LeftArrowButtonActive />;
      default:
        return <></>;
    }
  }

  return (
    <ButtonBox onClick={onClick}>
      {selectButton()}
    </ButtonBox>
  )
}

const ButtonBox = styled.div`
  cursor: pointer;
  
  display: flex;
  align-items: center;
`

export default CarouselButton
