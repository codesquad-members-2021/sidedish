import styled from 'styled-components';

const CarouselEventModal = ({ useEventModal }) => {
  const { carouselEvent, setCarouselEvent } = useEventModal();

  const handleTransitionEnd = (e) => {
    if (e.propertyName === "transform") setCarouselEvent({isActive: false});
  }
  
  return (
    <CarouselEventModalArea>
      <CarouselEventModalLayout 
        className={carouselEvent.isActive && "event-modal-active"} 
        onTransitionEnd={handleTransitionEnd}
      >
        <CarouselEventSpan>
          {carouselEvent.msg ? carouselEvent.msg : ""}
        </CarouselEventSpan>
      </CarouselEventModalLayout>
    </CarouselEventModalArea>
  )
}

const CarouselEventSpan = styled.span``;

const CarouselEventModalLayout = styled.div`
  position: fixed;
  width: 30%;
  height: 50px;
  
  background-color:#86C6FF;
  color: white;
  border-radius: 10px;
  
  display: flex;
  justify-content: center;
  align-items: center;
  
  bottom: -15%;
  transform: translateY(0px);
  opacity: 1;
  
  &.event-modal-active {
    transition-property: bottom, opacity, transform;
    transition-duration: 0.5s, 0.5s, 0.5s;
    transition-delay: 0s, 1.5s, 1.5s;
    
    bottom: 20px;
    transform: translateY(20px);
    opacity: 0;
    
  }
`;

const CarouselEventModalArea = styled.div`
  position: absolute;
  width: 100%;
  left: 0;
  
  display: flex;
  justify-content: center;
  z-index: 1;
`;

export default CarouselEventModal;