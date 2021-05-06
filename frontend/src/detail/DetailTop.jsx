import styled from "styled-components";
import DetailTopGallery from "./DetailTopGallery";
import DetailTopInfo from "./DetailTopInfo";

const DetailTop = ({ result }) => {
  return result && result.data && (
    <StyledDetailTop>
      <DetailTopGallery {...result.data}  />
      <DetailTopInfo data={result.data} hash={result.hash} />
    </StyledDetailTop>
  );
};

export default DetailTop;

// --- Styled Components ---
const StyledDetailTop = styled.div`
  padding: 32px 48px 0;
  border-radius: 5px 5px 0 0;
  background-color: ${({ theme }) => theme.colors.white || "#FFF"};

  display: grid;
  grid-template-columns: repeat(2, 1fr);
  column-gap: 32px;
`;
