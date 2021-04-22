import styled, { css } from "styled-components";
import { MdKeyboardArrowLeft, MdKeyboardArrowRight } from "react-icons/md";
import { cssTranslate, cssFlexAlignCenter } from "../style/CommonStyledCSS";

const ArrowButton = ({ ...props }) => (
  <StyledArrowButton {...props}>
    {props.direction === "L" ? (
      <MdKeyboardArrowLeft />
    ) : (
      <MdKeyboardArrowRight />
    )}
  </StyledArrowButton>
);

export default ArrowButton;

// ----------------

const StyledArrowButton = styled.button`
  ${cssTranslate};
  ${cssFlexAlignCenter};
  font-size: ${({ theme }) => theme.fontSize.XL || "16px"};
  cursor: pointer;

  ${({ direction, topPos }) =>
    direction &&
    css`
      position: absolute;
      top: ${topPos || "50%"};
      left: ${direction === "L" ? "-4rem" : "auto"};
      right: ${direction === "R" ? "-4rem" : "auto"};
    `}
`;