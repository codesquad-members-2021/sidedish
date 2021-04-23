import styled from "styled-components";
import { ReactComponent as LeftButtonSvg } from "../Styles/icons/LeftButton.svg";
import { ReactComponent as RightButtonSvg } from "../Styles/icons/RightButton.svg";
import { ReactComponent as upButtonSvg } from "../Styles/icons/upButton.svg";
import { ReactComponent as downButtonSvg } from "../Styles/icons/downButton.svg";

const Title = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 24px;
  line-height: 35px;
  color: #333;
`;

const LeftButton = styled(LeftButtonSvg)`
  margin: 20px;
`;
const RightButton = styled(RightButtonSvg)`
  margin: 20px;
`;
const upButton = styled(upButtonSvg)`
  margin: 20px;
`;
const downButton = styled(downButtonSvg)`
  margin: 20px;
`;

const flexBox = styled.div`
  display: ${(props) => props.display};
  flex-direction: ${(props) => props.flexDirection};
  align-items: ${(props) => props.alignItems};
  justify-content: ${(props) => props.justifyContent};
`;

const Card = {
  CardImage: styled.img`
    width: ${(props) => props.width}px;
    height: ${(props) => props.height}px;

    border-radius: 5px;
  `,

  CardTitle: styled.div`
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: normal;
    font-size: 16px;
    line-height: 23px;
    color: #333333;

    margin: 8px 0px;
  `,

  CardDescription: styled.div`
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: normal;
    font-size: ${(props) => props.fontSize}px;
    line-height: ${(props) => props.lineHeight}px;

    color: #828282;

    margin: 8px 0px;
  `,

  CardNPrice: styled.span`
    //할인 전 가격
    font-family: Noto Sans KR;
    font-size: ${(props) => props.fontSize}px;
    line-height: ${(props) => props.lineHeight}px;
    text-decoration-line: line-through;

    color: #bdbdbd;

    margin: 0px 8px;
  `,

  CardSPrice: styled.span`
    //할인 후 가격
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: bold;
    font-size: ${(props) => props.fontSize}px;
    line-height: ${(props) => props.lineHeight}px;

    color: #010101;
  `,

  CardEventBadge: styled.div`
    width: 97px;
    height: 28px;
    display: flex;
    justify-content: center;
    padding: 4px 16px;
    margin-right: 8px;

    background: #82d32d;
    border-radius: 5px;

    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: bold;
    font-size: 14px;
    line-height: 20px;

    color: #ffffff;
  `,

  CardLaunchingBadge: styled.div`
    width: 97px;
    height: 28px;
    display: flex;
    justify-content: center;
    padding: 4px 16px;
    margin-right: 8px;

    background: #86c6ff;
    border-radius: 5px;

    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: 700;
    font-size: 14px;
    line-height: 20px;

    color: #ffffff;
  `,
};

export { Title, LeftButton, RightButton, upButton, downButton, flexBox, Card };
