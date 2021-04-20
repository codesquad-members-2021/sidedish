import React from "react";
import styled from "styled-components";
import Main from "./Components/Main/Main";

const App = () => {
  const URL =
    "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/";

  return (
    <div>
      <Main URL={URL} />
    </div>
  );
};

export default App;
