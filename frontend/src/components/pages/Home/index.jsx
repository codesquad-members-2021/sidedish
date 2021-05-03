import React from "react";
import Header from "../../organisms/Header";
import BestDish from "../../organisms/BestDish";
import MainDish from "../../organisms/MainDish";
import ViewMore from "../../organisms/ViewMore";
import styled from "styled-components";

const Home = () => {
  const Wrapper = styled.div`
    max-width: 1440px;
    margin: 0 auto;
  `;
  const innerText = {
    bestDish: "후기가 증명하는 베스트 반찬",
    mainDish: "모두가 좋아하는 든든한 메인요리",
    soupDish: "정성이 담긴 뜨끈한 국물요리",
    sideDish: "식탁을 풍성하게 하는 정갈한 밑반찬",
  };

  return (
    <Wrapper>
      <Header />
      <BestDish _innerText={innerText.bestDish} _dishType="bestDish" />
      <MainDish _innerText={innerText.mainDish} _dishType="mainDish" />
      <ViewMore _innerText={innerText} />
    </Wrapper>
  );
};

export default Home;
