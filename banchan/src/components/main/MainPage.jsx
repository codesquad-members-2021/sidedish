import { useEffect, useState } from "react";
import styled from "styled-components";
import { CenterContainer } from "../utils/styles/common";
import CarouselSectionList from "./carousel/CarouselSectionList";
import Modal from "../utils/modal/Modal";
import ModalCard from "../utils/modal/ModalCard";

import TabSection from "./tab/TabSection";

const MainPage = (props) => {
  return (
    <>
      <TabSection />
      <CarouselSectionList />
      {/* <JennyCarousel /> */}
    </>
  );
};

export default MainPage;
