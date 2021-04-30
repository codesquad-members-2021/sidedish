import React, { useState } from "react";
import { WrapDiv, Ul, Li } from "./index.style";
import Span from "../../atoms/Span";
import HeaderDrop from "../../molecules/HeaderDrop";

const HeaderLeft = ({ children, ...props }) => {
  const [isDrop, setIsDrop] = useState("None");
  const displayDrop = (ele, menuNum) => {
    setIsDrop(menuNum);
    ele.target.style.fontWeight = "700";
  };

  return (
    <WrapDiv>
      <Span className="_logo" _margin="14px 56px 0 0">
        BANCHAN
      </Span>
      <Ul>
        <Li>
          <Span
            _headMenu
            key={1}
            onMouseEnter={(event) => displayDrop(event, "Menu1")}
            onMouseOut={(event) => (event.target.style.fontWeight = "400")}
            onMouseLeave={(event) => setIsDrop("None")}
          >
            든든한 메인요리
            <HeaderDrop isDrop={isDrop} menuNum={1}></HeaderDrop>
          </Span>
        </Li>
        <Li>
          <Span
            _headMenu
            key={2}
            onMouseEnter={(event) => displayDrop(event, "Menu2")}
            onMouseOut={(event) => (event.target.style.fontWeight = "400")}
            onMouseLeave={(event) => setIsDrop("None")}
          >
            뜨끈한 국물요리
            <HeaderDrop isDrop={isDrop} menuNum={2}></HeaderDrop>
          </Span>
        </Li>
        <Li>
          <Span
            _headMenu
            key={3}
            onMouseEnter={(event) => displayDrop(event, "Menu3")}
            onMouseOut={(event) => (event.target.style.fontWeight = "400")}
            onMouseLeave={(event) => setIsDrop("None")}
          >
            정갈한 밑반찬
            <HeaderDrop isDrop={isDrop} menuNum={3}></HeaderDrop>
          </Span>
        </Li>
      </Ul>
    </WrapDiv>
  );
};

export default HeaderLeft;
