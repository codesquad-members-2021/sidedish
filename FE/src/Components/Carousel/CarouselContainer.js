import styled from 'styled-components';


const CarouselContainer = ({type = "default", items, ...props}) => {
  const handleOnScroll = () => {

  }
  return (
    <CarouselLayout>
      <CarouselArea>
        {props.children}
      </CarouselArea>
      <CarouselButtonArea>
        <CarouselLeftButton />
        <CarouselRightButton />
      </CarouselButtonArea>
    </CarouselLayout>
  )
}

const CarouselLayout = styled.div`
  display: flex;
`
const CarouselArea = styled.div`
  width: 100%;
`;
const CarouselButtonArea = styled.div`
  position: absolute;
`;

const CarouselLeftButton = styled.button`
  :after {
    content: '<'
  }
`
const CarouselRightButton = styled.button`
  :after {
    content: '>'
  }
`


export default CarouselContainer;
