import styled from "styled-components";

const BestMenuTitle = styled.h1`
    color: #333333;
    text-align:left;
    margin-top:5%;
    margin-bottom: 32px;
    font-size:24px;
`;

const BestMenuTabTitle =styled.div`
    font-family: Noto Sans KR;
    font-style: normal;
    font-weight: bold;
    font-size: 18px;
    line-height: 58px;
    margin-right:8px;



    background: #F5F5F7;
    color: #828282;

    width: 201px;
    height: 58px;
    left: 0px;
    top: 0px;

    border-radius: 5px 5px 0px 0px;
    &.select {
        color: #333333;
        background: #EEF4FA;
    }
`;


const BestMenuTabInfo = styled.div`
    background-color: #EEF4FA;
    width: 1280px;
    height: 620px;
`
export {
    BestMenuTitle,
    BestMenuTabTitle,
    BestMenuTabInfo
}