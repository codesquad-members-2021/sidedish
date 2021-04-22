import styled from "styled-components";
import ItemCard from "../ItemCard";
import { VscChevronLeft, VscChevronRight } from "react-icons/vsc";
import useFetch from "../useFetch";

const CategoryColumn = styled.div`
  width: 1280px;
  padding: 0 20px;
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  grid-gap: 16px;
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

function CategorySlide() {
  const [initData, loadingState] = useFetch(
    "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main"
  );
  const resData = initData.body;

  return (
    <CategorySlideBlock>
      <ButtonLeft>
        <VscChevronLeft />
      </ButtonLeft>
      <CategoryColumn>
        {!loadingState &&
          resData.map((data, idx) => (
            <ItemCard key={idx} data={data} size={"S"} />
          ))}
      </CategoryColumn>
      <ButtonRight>
        <VscChevronRight />
      </ButtonRight>
    </CategorySlideBlock>
  );
}

export default CategorySlide;
