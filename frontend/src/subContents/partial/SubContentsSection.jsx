import styled, { css } from "styled-components";
import Title from "../../utilComponent/Title";
import ProductCard from "../../utilComponent/ProductCard";
import Carousel from "../../carousel/Carousel";
import { MdKeyboardArrowLeft, MdKeyboardArrowRight } from "react-icons/md";

const SubContentsSection = ({ data, type }) => {

  const carouselOptions = {
    itemsPerCnt: 4,
    carouselWrapStyle: cssCarouselWrapStyle,
    transitionProperty: "all",
    transitionDuration: "0.4s",
    arrowOption: {
      leftIcon: <MdKeyboardArrowLeft/>,
      rightIcon: <MdKeyboardArrowRight />,
      arrowLocation: 'top',
      btnSize: '30px',
    },
  };

  return (
    <StyledSubContentsSection>
      <Title type={type} />

      {data && (
        <Carousel {...carouselOptions}>
          {data.map((item, i) => (
            <ProductCard key={i} size="small" item={item} />
            // <div style={{width: '300px', height: '1000px', backgroundColor: 'blanchedalmond'}}>{i}</div>
          ))}
        </Carousel>
      )}

    </StyledSubContentsSection>
  );
};

export default SubContentsSection;

// --- Styled Components ---
const StyledSubContentsSection = styled.section`
  margin: 80px;
`;

const cssCarouselWrapStyle = css`
  margin: 40px 0 0;
`;
