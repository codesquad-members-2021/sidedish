import { useEffect, useState } from "react";
import styled from "styled-components";
import Carousel from "../utilComponent/carousel/Carousel";
import { MdKeyboardArrowLeft, MdKeyboardArrowRight } from "react-icons/md";
import ProductCard from "../utilComponent/ProductCard";

const DetailBottom = ({ result, slideDataObject }) => {
  const [bottomSlideData, setBottomSlideData] = useState(null);

  useEffect(() => {
    if (!result || !result.data || !slideDataObject) return;
    const thisType = result.data.type;
    setBottomSlideData(slideDataObject[thisType]);
  }, [result, slideDataObject]);

  const carouselOptions = {
    itemsPerCnt: 5,
    arrowOption: {
      leftIcon: <MdKeyboardArrowLeft />,
      rightIcon: <MdKeyboardArrowRight />,
      arrowLocation: "top",
      btnSize: "28px",
    },
  };

  return (
    bottomSlideData && (
      <StyledDetailBottom>
        <BottomCaption>함께하면 더욱 맛있는 상품</BottomCaption>
        <Carousel {...carouselOptions}>
          {bottomSlideData.length > 0 &&
            bottomSlideData.map((item, i) => (
              <ProductCard key={i} size="x-small" item={item} />
            ))}
        </Carousel>
      </StyledDetailBottom>
    )
  );
};

export default DetailBottom;

// --- Styled Components ---
const StyledDetailBottom = styled.div`
  padding: 32px 48px;
  border-radius: 0 0 5px 5px;
  background-color: ${({ theme }) => theme.colors.gray6 || "#F5F5F7"};
`;

const BottomCaption = styled.div`
  font-weight: ${({ theme }) => theme.fontWeight.bold || 700};
  font-size: ${({ theme }) => theme.fontSize.MM || "18px"};
  color: ${({ theme }) => theme.colors.gray1 || "gray"};
  margin: 0px 0px 10px 4px;
`;
