// styled-components의 ThemeProvider에 쓰임
// ThemeProvider는 useContext 쓰듯 사용하기!

const fontFamily = "Noto Sans KR";
const fontWeight = {
  bold: 900,
};
const fontSize = {
  m: "16px",
  l: "24px",
  xxl: "40px",
};
const colors = {
  white: "#FFF",
  black: "#333333",
  gray: "#828282",
  gray2: "#BDBDBD",
  lightGray: "#F5F5F7",
};

const theme = {
  fontFamily,
  fontWeight,
  fontSize,
  colors,
};
export default theme;
