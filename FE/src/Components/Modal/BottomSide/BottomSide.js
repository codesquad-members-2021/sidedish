import { useEffect } from 'react';
import styled from 'styled-components';
import * as Carousel from 'Components/Carousel';
import Card from 'Components/commons/Cards';

const BottomSide = ({ isHide }) => {

  useEffect(() => {
    console.log(isHide)
  }, [isHide])

  return (
    <BottomSideWrapper>
      <Carousel.Container navigator={"upper"} unit={5}>
        {/* for test */}
        {[...new Array(22).keys()].map((_, i) => {
          return <Card key={`test-${i}`} number={i} type={"responsive"} />;
        })}

      </Carousel.Container>
    </BottomSideWrapper>
  );
};

const BottomSideWrapper = styled.div`
  width: 960px;
  padding: 48px;
  box-sizing: border-box;
  background: #F5F5F7;
  border-radius: 0px 0px 5px 5px;
`;

export default BottomSide;
