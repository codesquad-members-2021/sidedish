// import { useState } from "react";
import Header from "./header/Header";
import MainPage from "./main/MainPage";
// import Test from "./Test";

const StateProvider = () => {
  // const [loginState, setLoginState] = useState(false);
  // login해서 상태값 받아와야 함

  return (
    <>
      <Header />
      <MainPage />
      {/* <Test /> */}
    </>
  );
};

export default StateProvider;
