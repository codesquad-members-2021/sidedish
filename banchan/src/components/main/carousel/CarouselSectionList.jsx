import { useState } from "react";
import CarouselSection from "./CarouselSection.jsx";
import styled from "styled-components";
import { CenterContainer } from "../../utils/styles/common.jsx";
import { URLS } from "../../../utils/variables.js";

const CarouselSectionList = (props) => {
  const [sections, setSections] = useState([
    { id: 0, kind: "main", title: "모두가 좋아하는 든든한 메인요리" },
    { id: 1, kind: "soup", title: "정성이 담긴 뜨끈한 국물요리" },
    { id: 2, kind: "side", title: "식탁을 풍성하게 하는 정갈한 밑반찬" },
  ]);

  return (
    <CarouselContainer>
      {sections.map((section) => (
        <CarouselSection
          key={section.id}
          url={URLS.base.concat(section.kind)}
          title={section.title}
          // onModal={props.onModal}
        />
      ))}
    </CarouselContainer>
  );
};

const CarouselContainer = styled(CenterContainer)`
  /*border: 1px solid red;*/
  display: flex;
  flex-direction: column;
`;

export default CarouselSectionList;
