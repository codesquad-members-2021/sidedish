import styled from "styled-components";
import ItemCard from "../ItemCard";
import { VscChevronLeft, VscChevronRight } from "react-icons/vsc";
import { AlignTextCenter } from "../Theme";
const CatgoryWrapper = styled.div`
  width: 1280px;
  padding: 0px;
  overflow: hidden;
`;
const CategoryColumn = styled.div`
  padding: 0px;
  display: grid;
  grid-gap: 16px;
  grid-template-columns: ${(props) => {
    const num = props.children.length;
    return `repeat(${num}, 1fr);`;
  }};
`;
const CategorySlideBlock = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 80px;
`;
const Button = styled.button`
  font-size: 36px;
  border: none;
  background-color: transparent;
  &:focus {
    outline: none;
  }
  cursor: pointer;
`;

const ButtonLeft = styled(Button)``;
const ButtonRight = styled(Button)``;
const LoadingWapper = styled(AlignTextCenter)`
  width: 1280px;
  height: 384px;
`;

function CategorySlide({ data }) {
  let listNum;

  const ItemCards = (data) => {
    let category;
    if (Array.isArray(data)) {
      listNum = data.length;
      category = data.map((data, idx) => (
        <ItemCard key={idx} data={data} size={"S"} />
      ));
    } else {
      category = (
        <LoadingWapper>
          <img src={"./load.jpg"} alt={"loading"} />
        </LoadingWapper>
      );
    }

    return category;
  };

  return (
    <CategorySlideBlock>
      <ButtonLeft>
        <VscChevronLeft />
      </ButtonLeft>
      <CatgoryWrapper>
        <CategoryColumn>{ItemCards(data)}</CategoryColumn>
      </CatgoryWrapper>
      <ButtonRight>
        <VscChevronRight />
      </ButtonRight>
    </CategorySlideBlock>
  );
}

export default CategorySlide;
