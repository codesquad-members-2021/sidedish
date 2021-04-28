import styled from 'styled-components';

const CarouselContainer = ({ categoryContents }) => {
  return <CategoriesDiv>{categoryContents}</CategoriesDiv>;
};

export default CarouselContainer;

const CategoriesDiv = styled.div`
  margin-bottom: 2rem;
  position: relative;
  width: 100%;
`;
