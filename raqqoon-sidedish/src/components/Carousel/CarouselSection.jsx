import { useState, useEffect } from 'react';
import styled from 'styled-components';
import { v4 as uuidv4 } from 'uuid';
import CarouselMain from 'components/carousel/CarouselMain';
import CarouselContainer from 'components/carousel/CarouselContainer';
import CategoryButton from 'components/carousel/CategoryBtn';

const CarouselSection = ({
  modalData,
  modalState,
  setModalState,
  setModalData,
}) => {
  const categories = ['main', 'soup', 'side'];
  const firstCategory = categories[0];
  const firstCarousel = (
    <CarouselMain
      key={uuidv4()}
      path={firstCategory}
      {...{ modalData, modalState, setModalState, setModalData }}
    />
  );
  const [categoryContents, setCategoryContents] = useState([firstCarousel]);
  const [isFolded, setIsFolded] = useState(false);

  const handleClickMoreBtn = () => {
    if (categoryContents.length === 1) return updateCarouselList();
    resetCategoryList();
  };

  const updateCarouselList = () => {
    const allCategories = categories
      .filter((_, idx) => idx !== 0)
      .map((path) => (
        <CarouselMain
          key={uuidv4()}
          path={path}
          {...{ modalData, modalState, setModalState, setModalData }}
        />
      ));
    setCategoryContents([...categoryContents, ...allCategories]);
  };

  const resetCategoryList = () => {
    setCategoryContents([categoryContents[0]]);
  };

  useEffect(() => {
    setIsFolded((foldStatus) => !foldStatus);
  }, [categoryContents]);
  return (
    <CarouselWrapper>
      <CarouselTitleDiv>
        <h2>모두가 좋아하는 든든한 메인요리</h2>
      </CarouselTitleDiv>
      <CarouselContainer categoryContents={categoryContents} />
      <CategoryButton onClick={handleClickMoreBtn} isFolded={isFolded} />
    </CarouselWrapper>
  );
};

export default CarouselSection;

const CarouselWrapper = styled.section`
  margin: 5rem 0 2rem;
  width: 1280px;
  position: relative;
`;

const CarouselTitleDiv = styled.div`
  margin-bottom: 2rem;

  h2 {
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: 700;
    font-size: 24px;
    line-height: 35px;
    color: #333333;
  }
`;
