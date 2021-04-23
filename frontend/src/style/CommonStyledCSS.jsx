// 공통적으로 쓰이는 css
import { css } from "styled-components";

const cssTranslate = css`
  background-color: transparent;
  background-repeat: no-repeat;
  overflow: hidden;
  outline: none;
  border: none;
`;

const cssFlexCenter = css`
  display: flex;
  align-items: center;
  justify-content: center;
`;

const cssFlexAlignCenter = css`
  display: flex;
  align-items: center;
`;

const cssFlexStartRow = css`
  display: flex;
  flex-direction: row;
  align-items: flex-start;
`;

const cssFlexStartCol = css`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
`;

export { cssTranslate, cssFlexCenter, cssFlexAlignCenter, cssFlexStartRow, cssFlexStartCol };
