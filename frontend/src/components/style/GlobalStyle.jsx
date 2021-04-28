import { createGlobalStyle } from 'styled-components';
const GlobalStyle = createGlobalStyle`
body{
  width: 1440px;
  font-family: Noto Sans KR;
  margin: 0 auto;
}
button{
  border: none;
  background-color: transparent;
  &:focus {
    outline: none;
  }
  cursor: pointer;
}
ul{
  padding: 0;
}
li{
  list-style: none;
  }
`;

export default GlobalStyle;
