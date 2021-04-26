import { useEffect, useState } from "react";
import styled from "styled-components";
import Ariticle from "./Article";
const SectionWrapper = styled.div``;
const ButtonMore = styled.div`
  font-weight: bold;
  text-align: center;
  line-height: 100px;
  background: #f5f5f7;
  box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.05);
  margin-top: 40px;
  height: 100px;
`;
const Section = ({ setModalData, setModalOn }) => {
  const [urlList, setUrlList] = useState([
    "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main",
  ]);
  const [cardList, setCardList] = useState([]);

  useEffect(() => {
    urlList.map((url) => {
      fetch(url)
        .then((res) => res.json())
        .then((json) => json.body)
        .then((body) => setCardList((list) => [...list, body]));
    });
  }, [urlList]);

  const handleOfClickMore = () => {
    setUrlList(() => [
      "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/soup",
      "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/side",
    ]);
  };
  console.log(cardList.length);
  return (
    <SectionWrapper>
      {cardList.map((ariticle) => (
        <Ariticle
          ariticle={ariticle}
          setModalData={setModalData}
          setModalOn={setModalOn}
        ></Ariticle>
      ))}
      {cardList.length === 1 ? (
        <ButtonMore onClick={handleOfClickMore}>모든 카테고리 보기</ButtonMore>
      ) : (
        ""
      )}
    </SectionWrapper>
  );
};

export default Section;
