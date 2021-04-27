import { createGlobalStyle } from "styled-components";

const GlobalStyles = createGlobalStyle` 
  
  *{
        box-sizing:border-box;
    }
    body{
        font-size:14px;
        /* background-color:rgba(20,20,20,0.5); */
        font-family: -apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif;
    }
    a{
        text-decoration:none;
        color:inherit;
        cursor: pointer;
    }
    ol, ul, li {
        list-style: none;
    }
    img {
        display: block;
        width: 100%;
        height: 100%;
    }
    input, button {
        background-color: transparent;
    }
    h1, h2, h3, h4, h5, h6 {
    font-family:'Maven Pro', sans-serif;
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
