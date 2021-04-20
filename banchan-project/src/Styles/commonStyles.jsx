import styled from "styled-components";
import { ReactComponent as LeftButtonSvg } from "../Styles/icons/LeftButton.svg";
import { ReactComponent as RightButtonSvg } from "../Styles/icons/RightButton.svg";

const Title = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: bold;
  font-size: 24px;
  line-height: 35px;
  color: #33333;
`;

const LeftButton = styled(LeftButtonSvg)``;
const RightButton = styled(RightButtonSvg)``;

const Card = {
  CardImage: styled.div`
    width: ${(props) => props.width}px;
    height: ${(props) => props.height}px;

    background: url(${(props) => props.imgUrl});
    border-radius: 5px;

    margin: 16px 0px;
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
    font-size: 14px;
    line-height: 20px;

    color: #828282;

    margin: 8px 0px;
  `,

  CardNPrice: styled.div`
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: normal;
    font-size: 14px;
    line-height: 20px;
    text-decoration-line: line-through;

    color: #bdbdbd;

    margin: 0px 8px;
  `,

  CardSPrice: styled.div`
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: bold;
    font-size: 20px;
    line-height: 29px;

    color: #010101;

    margin: 0px 8px;
  `,

  CardEventBadge: styled.div`
    width: 67px;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    padding: 4px 16px;

    background: #82d32d;
    border-radius: 5px;

    margin: 8px 10px;

    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: bold;
    font-size: 12px;
    line-height: 20px;

    color: #ffffff;
  `,

  CardLaunchingBadge: styled.div`
    width: 67px;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    padding: 4px 16px;

    background: #86c6ff;
    border-radius: 5px;

    margin: 8px 10px;

    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: bold;
    font-size: 12px;
    line-height: 20px;

    color: #ffffff;
  `,
};

export { Title, LeftButton, RightButton, Card };
