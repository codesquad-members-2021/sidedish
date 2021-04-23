import { useState } from "react";
import CountTitle from "./CountTitle";
import CountNumber from "./CountNumber";
import * as CS from "../../../Styles/commonStyles";

const Count = () => {
  const [count, setCount] = useState(0);

  const test = () => {
    console.log("clicked!");
  };

  return (
    <>
      <CountTitle />
      <CS.upButton onClick={() => setCount(count + 1)} />
      <CS.downButton onClick={() => setCount(count - 1)} />
      <CountNumber count={count} />
    </>
  );
};

export default Count;
