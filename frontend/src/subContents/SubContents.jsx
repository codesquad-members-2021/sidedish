// 모든 카테고리 보기 or 데이터 처리하여 SubContents Section 생성
import styled, { css } from "styled-components";
import { useEffect, useState, useContext } from "react";
import useFetch from "../hooks/useFetch";
import SubContentsSection from "./partial/SubContentsSection";
import AllSubContentsView from "./partial/AllSubContentsView";
import { SideDishContext } from "../utilComponent/SideDishStore";

const SubContents = () => {
  const { setSlideDataObject } = useContext(SideDishContext);
  const [contentObject, setContentObject] = useState({});
  const [allLoading, setAllLoading] = useState(true);
  const [contentsSections, setContentsSections] = useState(null);
  const [allView, setAllView] = useState(false);

  const { response: mainResponse, loading: mainLoading, error: mainError } = useFetch("/api/main");
  const { response: soupResponse, loading: soupLoading, error: soupError } = useFetch("/api/soup");
  const { response: sideResponse, loading: sideLoading, error: sideError } = useFetch("/api/side");

  // 1) SubContents에 필요한 데이터 요청
  useEffect(() => {
    if (mainLoading || soupLoading || sideLoading) return;

    const aContentObject = {
      ...contentObject,
      main: mainError || mainResponse.body.map((item) => ({...item, type: "main"})),
      soup: soupError || soupResponse.body.map((item) => ({...item, type: "soup"})),
      side: sideError || sideResponse.body.map((item) => ({...item, type: "side"})),
    };

    setContentObject(aContentObject);
    setSlideDataObject(aContentObject);
    setAllLoading(false);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [mainLoading, soupLoading, sideLoading]);

  // 2) SubContentsSection 컴포넌트들 생성
  useEffect(() => {
    if (allLoading) return;

    const aContentsSections = [];
    let nIdx = 0;
    for (const typeKey in contentObject) {
      const aData = contentObject[typeKey];
      aContentsSections.push(
        <SubContentsSection key={nIdx} type={typeKey} data={aData}/>
      );
      nIdx++;
    }
    setContentsSections(aContentsSections);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [allLoading]);

  const handleContentViewClick = () => setAllView((flag) => !flag);

  return (
    <>
      {allLoading || !contentsSections ? ("loading...") : (
        <ul>
          {contentsSections.map((section, i) => (
            <SectionItem key={i} first={i === 0} visible={allView}>
              {section}
            </SectionItem>
          ))}
      </ul>
      )}
      {!allLoading && contentsSections && (
        <AllSubContentsView onClick={handleContentViewClick}>
          {allView ? "가리기" : "모든 카테고리 보기"}
        </AllSubContentsView>
      )}
    </>
  );
};

export default SubContents;

// --- Styled Components ---
const SectionItem = styled.li`
  ${({first, visible}) => (!first && !visible) && css`display: none`};
`;