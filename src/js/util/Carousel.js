import styled from "styled-components";

const Carousel = ({ children: items, itemPerPeice }) => {
  const carouselForm = createSlideDateFromItems(items, itemPerPeice);
  return (
    <CarouselWrapper>
      {carouselForm.map((slide) => {
        return (
          <SlideList>
            {slide.map((item) => (
              <SlideItem>{item}</SlideItem>
            ))}
          </SlideList>
        );
      })}
    </CarouselWrapper>
  );
};

const createSlideDateFromItems = (items, itemPerPeice) => {
  return items.reduce((result, item, index) => {
    const [i, j] = divmod(index, itemPerPeice);
    result[i] ? (result[i][j] = item) : (result[i] = [item]);
    return result;
  }, []);
};
const divmod = (a, b) => {
  return [parseInt(a / b), a % b];
};
const CarouselWrapper = styled.div`
  display: flex;
`;
const SlideList = styled.ul``;
const SlideItem = styled.li``;
export default Carousel;
