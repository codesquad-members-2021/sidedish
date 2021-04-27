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

  const [viewMoreState, setViewMoreState] = useState(false);

  return (
    <CarouselContainer>
      <CarouselSection key={sections[0].id} url={URLS.base.concat(sections[0].kind)} title={sections[0].title} />
      {!viewMoreState && <ViewMoreButton onClick={() => setViewMoreState(true)}>모든 카테고리 보기</ViewMoreButton>}
      {viewMoreState &&
        sections
          .slice(1)
          .map((section) => (
            <CarouselSection key={section.id} url={URLS.base.concat(section.kind)} title={section.title} />
          ))}
    </CarouselContainer>
  );
};

const CarouselContainer = styled(CenterContainer)`
  /*border: 1px solid red;*/
  display: flex;
  flex-direction: column;
`;

const ViewMoreButton = styled.button`
  border: none;
  background: ${(props) => props.theme.colors.lightGrayBG};
  width: 100%;
  padding: 37px 0;
  font-size: ${(props) => props.theme.fontSizes.M};
  color: ${(props) => props.theme.colors.darkGray};
  font-weight: bold;
  box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.05);
  font-family: "Noto Sans KR";
  cursor: pointer;
`;

export default CarouselSectionList;
