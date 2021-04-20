import { createGlobalStyle } from "styled-components";
import "./reset.css";

const GlobalStyle = createGlobalStyle`
    body {
        width: 1280px;
        margin: 0 auto;
    }
`;

const App = () => (
  <>
    <GlobalStyle />
    <div>Test</div>
  </>
);

export default App;
