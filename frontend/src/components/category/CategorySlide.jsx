import styled from "styled-components";
import ItemCard from "../ItemCard";
import { VscChevronLeft, VscChevronRight } from "react-icons/vsc";
import useFetch from "../useFetch";
import { Button } from "../Theme";
const CategoryWrapper = styled.div`
  display: flex;
  overflow: hidden;
`;
const CategoryColumn = styled.div`
  width: 1280px;
  padding: 0px;
  display: flex;
  overflow: hidden;
  div {
    margin-left: 16px;
    &:first-child {
      margin-left: 0px;
    }
  }
`;
const CategorySlideBlock = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 80px;
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
      <CategoryWrapper>
        <CategoryColumn>
          {!loadingState &&
            resData.map((data, idx) => (
              <ItemCard key={idx} data={data} size={"S"} />
            ))}
        </CategoryColumn>
      </CategoryWrapper>
      <ButtonRight>
        <VscChevronRight />
      </ButtonRight>
    </CategorySlideBlock>
  );
}

export default CategorySlide;
