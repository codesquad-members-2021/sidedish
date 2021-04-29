import { useState, useEffect } from "react";
import Header from "./header/Header";
import MainPage from "./main/MainPage";

const StateProvider = () => {
  const [loginState, setLoginState] = useState(false);
  // login해서 상태값 받아와야 함

  useEffect(() => {
    const token = localStorage.getItem("token");
    token !== null && setLoginState(true);
  }, []);

  return (
    <>
      <Header loginState={loginState} setLoginState={setLoginState} />
      <MainPage />
    </>
  );
};

export default StateProvider;
