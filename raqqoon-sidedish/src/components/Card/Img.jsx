import { MSG_BOTTOM, MSG_TOP } from 'const';
import { useState } from 'react';
import styled from 'styled-components';
import { BLOCK } from 'const';
import checkCardSize from 'util/checkCardSize';

const Img = ({
  cardSize,
  image,
  alt,
  setModalState,
  title,
  detail_hash,
  badge,
  setModalData,
}) => {
  const url = image;
  const [opacitiy, setOpacity] = useState(0);

  const randomIndex = (list) =>
    Math.floor(Math.random() * (list.length - 0) + 0);

  const handleErrorImg = (e) => {
    const errorImgList = [
      `https://mblogthumb-phinf.pstatic.net/20151218_167/bmh8824gr_1450428440331O1tk1_PNG/%B1%CD%BF%A9%BF%EE_%C8%F1%B1%CD%B5%BF%B9%B0_%B8%F0%C0%BD_%BD%C5%B1%E2%C7%D1_%B5%BF%B9%B0_%BB%E7%C1%F8%B5%E901.png?type=w800`,
      `https://t1.daumcdn.net/cfile/tistory/23EA4A33597DCB1509`,
      `https://t1.daumcdn.net/cfile/blog/995892445D26A8D322`,
      `https://i.pinimg.com/originals/e1/36/b1/e136b1eb1000341ace8d41cc7a0cf4b2.png`,
      `https://images.unsplash.com/photo-1497752531616-c3afd9760a11?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFjY29vbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60`,
      `https://pbs.twimg.com/profile_images/1269871098297847811/5EsVd_rj_400x400.jpg`,
      `https://dcimg4.dcinside.co.kr/viewimage.php?id=20bcde21e4df3da27c&no=24b0d769e1d32ca73dec85fa11d02831f032f3b7b65aa671697d5dc3262a7a0f57731071285a9bd0e933c39d9ae597f007d9033d6bd2219e11d9c2f988e5ba67e535cb487e47f7b17d0674dab56ebb997b9638e78336fc37ac52d30ed3`,
      `http://file3.instiz.net/data/file3/2018/02/12/9/6/8/968a82c3749febebb5cc200d30a86be3.jpg`,
      `https://media.vlpt.us/images/awesomeo184/post/c1d73c47-1103-4c47-94cd-8563e85b6542/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-10-07%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%2010.25.31.png`,
    ];

    e.target.src = errorImgList[randomIndex(errorImgList)];
  };

  const handleClickCard = () => {
    setModalState(BLOCK);
    setModalData({
      hash: detail_hash,
      title: title,
      badge: badge,
    });
  };

  return (
    <ImgDiv
      cardSize={checkCardSize(cardSize)}
      onMouseOver={() => setOpacity(100)}
      onMouseOut={() => setOpacity(0)}
      onClick={handleClickCard}
    >
      <img
        src={url}
        alt={alt}
        onError={handleErrorImg}
        width={checkCardSize(cardSize)}
        height={checkCardSize(cardSize)}
      />
      <HoverText cardSize={cardSize} opacitiy={opacitiy} />
    </ImgDiv>
  );
};

const HoverText = ({ cardSize, opacitiy }) => {
  return (
    <HoverTextBoxDiv cardSize={cardSize} opacitiy={opacitiy}>
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
  width: ${({ cardSize }) => checkCardSize(cardSize)};
  height: ${({ cardSize }) => checkCardSize(cardSize)};
  display: flex;

  img {
    border-radius: 5px;
  }
`;

const HoverTextBoxDiv = styled.div`
  position: absolute;
  padding: 0px;
  display: flex;
  opacity: ${(props) => props.opacitiy};
  width: ${({ cardSize }) => checkCardSize(cardSize)};
  height: ${({ cardSize }) => checkCardSize(cardSize)};
  background: rgba(0, 0, 0, 0.6);
  border-radius: 5px;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  transition: all 0.2s ease-in-out;
  cursor: pointer;
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
