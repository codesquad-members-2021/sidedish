import styled from "styled-components";
// import theme from "../styles/theme.js";
import Price from "../Price";
import Label from "../Label";
import {
  CenterContainer,
  LabelList,
  StyledDescription,
  StyledTitle,
} from "../styles/common.jsx";
import { useState } from "react";
import Modal from "../modal/Modal.jsx";
import ModalCard from "../modal/ModalCard.jsx";
import { URLS } from "../../../utils/variables.js";
import IconButton from "../button/IconButton.jsx";
import Thumbnail from "./Thumbnail";
// import useFetch from "../../../hooks/useFetch";

// const mockImage = "https://recipe1.ezmember.co.kr/cache/recipe/2020/09/23/5e308abb30b00ecb9c1b9b398db5b4451.jpg";

const Card = ({ product, cardSize, margin = 0, type, onModal }) => {
  const [modalState, setModalState] = useState(false);
  const [detail, setDetail] = useState({});

  const requestProductDetailInfo = async () => {
    const data = await fetch(URLS.base + `detail/${product.detail_hash}`);
    const json = await data.json();
    setDetail({ ...json.data });
    setModalState(true);
  };

  // const { products, loading, error } = useFetch({
  //   url: URLS.base + `detail/${product.detail_hash}`,
  // });
  // if (products) setModalState(true);

  return (
    <>
      <StyledLi
        cardSize={cardSize}
        margin={margin}
        onClick={requestProductDetailInfo}
      >
        <Thumbnail {...{ product, cardSize, type }} />
        <StyledTitle>{product.title}</StyledTitle>
        <StyledDescription>{product.description}</StyledDescription>
        <Price product={product} />
        <LabelList>
          {product.badge && product.badge.map((e) => <Label badgeName={e} />)}
        </LabelList>
      </StyledLi>
      <Modal>
        {modalState && (
          <ModalBackground>
            <ModalContainer>
              <ModalCard product={{ ...product, ...detail }} />
              <IconButton
                type="CLOSE"
                fn={() => setModalState(false)}
                margin={10}
              />
            </ModalContainer>
          </ModalBackground>
        )}
      </Modal>
    </>
  );
};

const StyledLi = styled.li`
  width: ${(props) => props.cardSize};
  margin: 0 ${(props) => props.margin}px;
  list-style: none;
`;

const ModalBackground = styled(CenterContainer)`
  position: fixed;
  top: 0;
  left: 0;
  background: rgba(0, 0, 0, 0.4);
  width: 100%;
  height: 100%;
`;

const ModalContainer = styled.div`
  display: flex;
  align-items: flex-start;
  position: absolute;
  left: 50%;
  transform: translateX(-48%);
`;

export default Card;
