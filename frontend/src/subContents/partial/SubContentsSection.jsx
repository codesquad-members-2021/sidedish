import styled from "styled-components";
import Title from "../../utilComponent/Title";
import Carousel from "../../utilComponent/Carousel";

const SubContentsSection = ({data, type}) => {
  return (
    <StyledSubContentsSection>
      <Title type={type} />
      <Carousel arrData={data} carouselMargin="40px 0 0" arrowTopPos="35%" />
    </StyledSubContentsSection>
  );
};

export default SubContentsSection;

// --- Styled Components ---
const StyledSubContentsSection = styled.section`
  margin: 80px;
`;