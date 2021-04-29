import styled, { css } from "styled-components";
import { cssTranslate, cssFlexAlignCenter } from "../../style/CommonStyledCSS";

const ArrowButton = ({ children, ...props }) => (
  <StyledArrowButton {...props}>{children}</StyledArrowButton>
);

export default ArrowButton;

// ----------------

const StyledArrowButton = styled.button`
  ${cssTranslate};
  font-size: ${({ arrowProps: { btnSize } }) => btnSize || "32px"};
  cursor: pointer;
  ${cssFlexAlignCenter};
  ${({ direction, arrowProps: { arrowLocation, btnSize } }) =>
    arrowLocation === "normal" &&
    css`
      position: absolute;
      top: ${btnSize
        ? `calc(50% - (${btnSize} / 2))`
        : `calc(50% - (32px / 2))`};
      left: ${direction === "L" ? "-4rem" : "auto"};
      right: ${direction === "R" ? "-4rem" : "auto"};
    `}

  ${({ direction, arrowProps: { startPos, endPos, itemLength } }) =>
    direction &&
    css`
      color: ${(direction === "L" && startPos <= 1) ||
      (direction === "R" && endPos >= itemLength)
        ? ({ theme }) => theme.colors.gray4 || "lightgray"
        : ({ theme }) => theme.fontSize.gray1 || "black"};

      cursor: ${(direction === "L" && startPos <= 1) ||
      (direction === "R" && endPos >= itemLength)
        ? "default"
        : "pointer"};
    `}
`;
