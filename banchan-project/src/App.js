import GlobalStyles from "../src/Styles/GlobalStyles";
import MainItems from "./MainItems/MainItems.jsx";
import Header from "./Header/Header";
import BestItems from "./BestItems/BestItems";
import { ThemeProvider } from "styled-components";
import theme from "./Styles/theme";

const App = () => {
  return (
    <div className="App">
      <GlobalStyles />
      <ThemeProvider theme={theme}>
        <Header></Header>
        <BestItems></BestItems>
        <MainItems />
      </ThemeProvider>
    </div>
  );
};

export default App;
