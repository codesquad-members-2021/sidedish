import styled from "styled-components/";

export const theme = {
  colors: {
    skyblue: "#EEF4FA",
    skyblue_badge: "#86C6FF",
    grey_css: "#F5F5F7",
    grey_text: "#828282",
    green: "#82D32D",
    white: "#FFFFFF",
    black: "#3333333",
  },
  fontSize: {
    small: "14px",
    medium: "16px",
    large: "18px",
    larger: "24px",
  },
  fontWeight: {
    bold: 800,
    normal: 400,
  },
  padding: {
    globalPadding: "0 40px",
  },
};

export const AlignTextCenter = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
`;

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

export const Button = styled.button`
  font-size: 36px;
  border: none;
  background-color: transparent;
  &:focus {
    outline: none;
  }
  cursor: pointer;
`;
