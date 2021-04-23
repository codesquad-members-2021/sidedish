import styled from "styled-components/";

export const theme = {
  colors: {
    skyblue: "#EEF4FA",
    skyblue_badge: "#86C6FF",
    grey_css: "#F5F5F7",
    grey_text: "#828282",
    deep_grey_text: "#4F4F4F",
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

export function Title({ children }) {
  const TitleBlock = styled.div`
    font-size: 24px;
    font-weight: 800;
    lineheight: 34.75px;
    padding-bottom: 32px;
    box-sizing: border-box;
  `;
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

export const ItemPrice = styled.span`
  font-size: ${theme.fontSize.larger};
  font-weight: Bold;
  margin-right: 10px;
`;
export const ItemPriceNormal = styled.span`
  text-decoration: line-through;
  color: ${theme.colors.grey_text};
`;
export const BadgeWrapper = styled.div`
  display: flex;
`;
export const Badge = styled(AlignTextCenter)`
  width: 97px;
  height: 28px;
  margin-top: 20px;
  margin-right: 20px;
  background-color: ${(props) => {
    return props.val === "이벤트특가"
      ? theme.colors.green
      : theme.colors.skyblue_badge;
  }};
  color: ${theme.colors.white};
  font-weight: Bold;
  font-size: ${theme.fontSize.small};
  border-radius: 10px;
`;
