import { createGlobalStyle } from "styled-components";
import reset from "styled-reset";

const GlobalStyles = createGlobalStyle` 
  ${reset}
  *{
    box-sizing:border-box;
  }
  .App{
    
    display:flex;
    flex-direction:column;
    align-items:center;
    justify-content:center;
    }
    
    .container{
      position:relative;
      width:1440px;
      height: 2847px;
      display:flex;
      flex-direction:column;
      align-items:center;
  }
`;

export default GlobalStyles;
