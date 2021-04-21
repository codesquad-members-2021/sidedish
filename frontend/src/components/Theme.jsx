import styled from "styled-components/";

export const theme = {
  colors: {
    skyblue: "#EEF4FA",
    grey_css: "#F5F5F7",
    grey_text: "#828282",
  },
  fontSize: {
    btn: "18px",
  },
};

const TitleBlock = styled.div`
  font-size: 24px;
  font-weight: 800;
  lineheight: 34.75px;
  padding-bottom: 32px;
  box-sizing: border-box;
`;

export function Title({ children }) {
  return <TitleBlock>{children}</TitleBlock>;
}
