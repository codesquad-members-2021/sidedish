import styled, { css } from "styled-components";
import { cssTranslate } from "../../style/CommonStyledCSS";
import { IoClose } from "react-icons/io5";

const ModalCloseButton = ({ children, ...props }) => (
  <StyledModalCloseButton {...props}>
    {children || <IoClose />}
  </StyledModalCloseButton>
);

export default ModalCloseButton;

// --- Styled Components ---
const StyledModalCloseButton = styled.button`
  ${cssTranslate};

  ${({ cssCloseButtonStyle }) =>
    cssCloseButtonStyle
      ? cssCloseButtonStyle
      : css`
          position: absolute;
          top: 0;
          right: -30px;
        `};

  cursor: pointer;
  color: ${({ theme }) => theme.colors.white || "#FFF"};
  font-size: ${({ theme }) => theme.fontSize.XL || "24px"};
`;
