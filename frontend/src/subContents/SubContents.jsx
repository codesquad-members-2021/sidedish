// 모든 카테고리 보기 or 데이터 처리하여 SubContents Section 생성
import _ from "../ref";
import { useEffect, useState, useContext } from "react";
import useFetch from "../hooks/useFetch";
import SubContentsSection from "./partial/SubContentsSection";
import AllSubContentsView from "./partial/AllSubContentsView";
import { SideDishContext } from "../utilComponent/SideDishStore";

const SubContents = () => {
  const { setSlideData } = useContext(SideDishContext);
  const [contentData, setContentData] = useState({});
  const [allLoading, setAllLoading] = useState(true);
  const [contentsSections, setContentsSections] = useState([]);

  const { response: mainResponse, loading: mainLoading, error: mainError } = useFetch(_.URL + "main");
  const { response: soupResponse, loading: soupLoading, error: soupError } = useFetch(_.URL + "soup");
  const { response: sideResponse, loading: sideLoading, error: sideError } = useFetch(_.URL + "side");

  useEffect(() => {
    if (mainLoading || soupLoading || sideLoading) return;
    const aContentData = {
      ...contentData,
      main: mainError || mainResponse.body,
      soup: soupError || soupResponse.body,
      side: sideError || sideResponse.body,
    };
    setContentData(aContentData);
    setSlideData(aContentData);
    setAllLoading(false);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [mainLoading, soupLoading, sideLoading]);

  useEffect(() => {
    if (allLoading) return;
    setContentsSections((arr) =>
      arr.concat(
        <SubContentsSection
          type="main"
          key={0}
          data={[...contentData["main"]]}
        />
      )
    );
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [allLoading]);

  const handleContentViewClick = () => {
    const types = ["soup", "side"];
    types.forEach((type, i) => {
      setContentsSections((arr) =>
        arr.concat(
          <SubContentsSection
            type={type}
            key={i+1}
            data={[...contentData[type]]}
          />
        )
      );
    });
  };

  return (
    <>
      {allLoading || !contentsSections ? "loading..." : contentsSections}
      {!allLoading && contentsSections && contentsSections.length < 3 && (
        <AllSubContentsView onClick={handleContentViewClick}>
          모든 카테고리 보기
        </AllSubContentsView>
      )}
    </>
  );
};

export default SubContents;
