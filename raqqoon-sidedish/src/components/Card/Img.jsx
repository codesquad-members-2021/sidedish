import { FLEX, MSG_BOTTOM, MSG_TOP, NONE } from 'const';
import { useState } from 'react';
import styled from 'styled-components';

const Img = () => {
  const [display, setDisplay] = useState(NONE);
  const onToggleDisplay = (display) => {
    if (display === NONE) return setDisplay(FLEX);
    return setDisplay(NONE);
  };

  return (
    <ImgDiv
      onMouseEnter={() => onToggleDisplay(display)}
      onMouseLeave={() => onToggleDisplay(display)}
    >
      <img
        src="http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg"
        alt="img"
      />
      <HoverText display={display} />
    </ImgDiv>
  );
};

const HoverText = ({ display }) => {
  return (
    <HoverTextBoxDiv display={display}>
      <Text message={MSG_TOP} />
      <Line />
      <Text message={MSG_BOTTOM} />
    </HoverTextBoxDiv>
  );
};

const Text = ({ message }) => {
  return (
    <TextDiv>
      <span>{message}</span>
    </TextDiv>
  );
};
const Line = () => {
  return <LineDiv />;
};

export default Img;

const ImgDiv = styled.div`
  position: relative;
  width: 384px;
  height: 384px;
  display: flex;

  img {
    width: 100%;
    height: 100%;
    border-radius: 5px;
  }
`;

const HoverTextBoxDiv = styled.div`
  position: absolute;
  padding: 0px;
  display: ${(props) => props.display};
  width: 384px;
  height: 384px;
  background: rgba(0, 0, 0, 0.6);
  border-radius: 5px;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  transition: all 0.2s ease-in-out;
`;

const TextDiv = styled.div`
  color: #fff;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: 700;
  font-size: 24px;
  line-height: 35px;
  margin: 16px 0;
`;
const LineDiv = styled.div`
  width: 90px;
  height: 1px;
  background: #fff;
  display: flex;
  justify-content: center;
  align-items: center;
`;
