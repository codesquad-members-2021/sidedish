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
  font-size: 32px;
  cursor: pointer;

  ${({ direction, arrowOption: { cssTopPos, startPos, endPos, dataLength } }) =>
    direction &&
    css`
      position: absolute;
      top: ${cssTopPos || "50%"};
      left: ${direction === "L" ? "-4rem" : "auto"};
      right: ${direction === "R" ? "-4rem" : "auto"};

      color: ${(direction === "L" && startPos <= 1) ||
      (direction === "R" && endPos >= dataLength) 
        ? ({ theme }) => theme.colors.gray4 || "lightgray"
        : ({ theme }) => theme.fontSize.gray1 || "black"};
    `}
`;
