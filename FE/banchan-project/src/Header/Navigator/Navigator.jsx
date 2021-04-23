import { useState, useEffect } from "react";
import Category from "./Category";

import * as S from "../HeaderStyles";

const Navigator = () => {
  return (
    <S.Navigator>
      <Category></Category>
    </S.Navigator>
  );
};

export default Navigator;
