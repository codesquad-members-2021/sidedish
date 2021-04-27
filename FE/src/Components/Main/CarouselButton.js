import React, { useState } from "react";
import styled from "styled-components";
import {
  BeforeRight,
  AfterRight,
  BeforeLeft,
  AfterLeft,
} from "../../Svg/Button";

const CarouselButton = ({ Name, Slide }) => {
  const [Right, setRight] = useState(BeforeRight);
  const [Left, setLeft] = useState(BeforeLeft);

  const MouseEnter = (e) => {
    e.target.classList.contains("Left")
      ? setLeft(AfterLeft)
      : setRight(AfterRight);
  };
  const MouseLeave = (e) => {
    e.target.classList.contains("Left")
      ? setLeft(BeforeLeft)
      : setRight(BeforeRight);
  };
  return (
    <Button
      className={Name}
      onMouseEnter={MouseEnter}
      onMouseLeave={MouseLeave}
      onClick={Slide}
    >
      {Name === "Left" ? Left : Right}
    </Button>
  );
};

const Button = styled.button`
  margin-top: ${({ className }) =>
    className === "Right" || "Left" ? `170px` : `0px`};
  z-index: 1;
  background-color: white;
  border: none;
  outline: none;
  height: 50px;
  &:active {
    transform: translateY(2px);
  }
`;
export default CarouselButton;
