import styled from 'styled-components';

const CarouselEventModal = ({ carouselEvent, setEventMessage }) => {
  
  const handleTransitionEnd = (e) => {
    if (e.propertyName === "transform") setEventMessage({isActive: false});
  }
  
  return (
    <CarouselEventModalLayout 
      className={carouselEvent.isActive && "event-modal-active"} 
      onTransitionEnd={handleTransitionEnd}
    >
      <CarouselEventSpan>
        {carouselEvent.msg ? carouselEvent.msg : ""}
      </CarouselEventSpan>
    </CarouselEventModalLayout>
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
    transition-delay: 0s, 3s;
    
    bottom: 20px;
    transform: translateY(90px);
  }
`;

export default CarouselEventModal;