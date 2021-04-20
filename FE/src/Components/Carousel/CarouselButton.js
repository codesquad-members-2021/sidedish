import styled from 'styled-components';

import LeftArrowButtonActive from '../commons/Buttons/LeftArrowButtonActive.js';
import RightArrowButtonActive from '../commons/Buttons/RightArrowButtonActive.js';

const CarouselButton = ({ type, onDispatch }) => {
  
  const selectButton = () => {
    switch (type) {
      case "right":
        return <RightArrowButtonActive />;
      case "left":
        return <LeftArrowButtonActive />;
    }
  }
  
  return (
    <ButtonBox onClick={() => onDispatch({ action: type })}>
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
