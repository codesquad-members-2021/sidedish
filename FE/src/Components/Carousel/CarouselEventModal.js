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
  
  display:flex;
  justify-content: center;
  align-items: center;
  
  bottom: -70px;
  transform: translateY(0px);
  
  &.event-modal-active {
    transition-property: bottom, transform;
    transition-duration: 0.5s, 0.5s;
    transition-delay: 0s, 1.5s;
    
    bottom: 20px;
    transform: translateY(90px);
  }
`;

const CarouselEventModalArea = styled.div`
  position: absolute;
  width: 100%;
  left: 0;
  
  display: flex;
  justify-content: center;
`;

export default CarouselEventModal;