// 모든 카테고리 보기 or 데이터 처리하여 SubContents Section 생성
import styled from "styled-components";
import { cssFlexCenter, cssTranslate } from "../../style/CommonStyledCSS";

const AllSubContentsView = ({ children, ...props }) => (
  <StyledAllSubContentsView>
    <ViewButton {...props}>{children}</ViewButton>
  </StyledAllSubContentsView>
);

export default AllSubContentsView;

// --- Styled Components ---
const StyledAllSubContentsView = styled.div`
  ${cssFlexCenter};
  position: absolute;
  left: 0;
  width: 100%;

  background-color: ${({ theme }) => theme.colors.gray6};
  box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.05);
`;

const ViewButton = styled.button`
  ${cssTranslate};
  cursor: pointer;
  width: 100%;
  padding: 37px 0;

  color: ${({ theme }) => theme.colors.gray1};
  font-family: ${({ theme }) => theme.fontFamily};
  font-weight: ${({ theme }) => theme.fontWeight.bold};
  font-size: ${({ theme }) => theme.fontSize.L};
`;