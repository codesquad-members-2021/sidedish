import styled from 'styled-components';

const CarouselContainer = ({ categoryContents }) => {
  return <CategoriesDiv>{categoryContents}</CategoriesDiv>;
};

export default CarouselContainer;

const CategoriesDiv = styled.div`
  position: relative;
  width: 100%;
`;
