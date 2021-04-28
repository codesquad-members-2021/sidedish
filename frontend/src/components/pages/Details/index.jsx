import React, { useState, useEffect } from "react";
import styled from "styled-components";

import loadData from "../../../util/loadData";
import InfoImages from "../../molecules/InfoImages";
import InfoGeneral from "../../molecules/InfoGeneral";
import InfoPrice from "../../molecules/InfoPrice";
import InfoProduct from "../../molecules/InfoProduct";
import InfoQuantity from "../../molecules/InfoQuantity";

const Details = ({ ...props }) => {
  const [detailDish, setDetailDish] = useState([]);

  useEffect(() => {
    loadData(setDetailDish, props._dishType, props._hash);
  }, []);

  const ImageWrapper = styled.div`
    display: flex;
    flex-direction: column;
  `;
  const ContentWrapper = styled.div`
    display: flex;
    flex-direction: column;
  `;
  return (
    <>
      <ImageWrapper>
        <InfoImages></InfoImages>
      </ImageWrapper>
      <ContentWrapper>
        <InfoGeneral></InfoGeneral>
        <InfoPrice></InfoPrice>
        <InfoProduct></InfoProduct>
        <InfoQuantity></InfoQuantity>
      </ContentWrapper>
    </>
  );
};

export default Details;
