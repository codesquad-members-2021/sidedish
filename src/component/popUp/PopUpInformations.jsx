import styled from 'styled-components';
import Label from '../util/Label';
import { FaAngleUp, FaAngleDown } from 'react-icons/fa';

const PopUpInformationsStyle = styled.div`
`;

const PopUpItemTitle = styled.div`
    font-size: 1.5rem;
    font-weight: 600;
    margin-bottom: 1rem;
`;

const PopUpItemDescription = styled.div`
    font-size: 1.125rem;
    color: #828282;
    margin-bottom: 1rem;
`;

const PopUpItemPriceContainer = styled.div`
    margin-bottom: 1.5rem;
    display: flex;
    align-items: flex-end;
`;

const SalePriceStyle = styled.div`
    font-size: 1.5rem;
    font-weight: 600;
    margin-left: 0.5rem;
    margin-right: 0.5rem;
`;

const NormalPriceStyle = styled.div`
    color: #828282;
    text-decoration: line-through;
`;

const PopUpItemBuyingInformations = styled.div`
    border-top: 1px solid #e0e0e0;
    border-bottom: 1px solid #e0e0e0;
    padding: 0.5rem 0;
`;

const PopUpItemBuyingInformation = styled.div`
    display: grid;
    grid-template-columns: 5rem auto;
    margin-top: 1rem;
    &:last-child {
        margin-bottom: 1rem;
    }
`;

const PopUpItemBuyingInformationTitle = styled.div`
    color: #828282;
    line-height: 1.5rem;
`;

const PopUpItemBuyingInformationContent = styled.div`
    line-height: 1.5rem;
`;
const PopUpItemCountContainer = styled.div`
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 1.5rem 0;
    border-bottom: 1px solid #e0e0e0;
    & > *:last-child {
        display: grid;
        grid-template-columns: 5rem 2rem;
        line-height: 0;
    }
`;

const PopUpItemCountTitle = styled.div`
    color: #828282;
    width: 5rem;
`;

const PopUpItemCount = styled.input.attrs({
  type: 'text'
})`
    font-size: 1rem;
    padding: 0rem 1rem;
    border: 1px solid #E0E0E0;
    text-align: center;
`;

const PopUpItemCountBtns = styled.div`
    border: 1px solid #E0E0E0;
    border-left: 0px;
`;

const PopUpItemCountBtn = styled.button`
    width: 100%;
    &:first-child {
        border-bottom: 1px solid #E0E0E0;
    }
`;

const PopUpItemTotalPriceContainer = styled.div`
    display: flex;
    justify-content: flex-end;
    padding: 2rem 0;
`;

const PopUpItemTotalPriceTitle = styled.div`
    margin-right: 1.5rem;
    color: #828282;
    font-size: 1.125rem;
    align-self: center;
`;

const PopUpTotalPrice = styled.div`
    font-size: 2rem;
    font-weight: 600;
`;

const PopUpItemOrderBtn = styled.button`
    background-color: #82D32D;
    color: #fff;
    font-size: 1.125rem;
    font-weight: 600;
    border-radius: 0.3125rem;
    border: 1px solid #82D32D;
    padding: 1rem;
    text-align: center;
    cursor: pointer;
    width: 100%;
    transition: all 0.2s ease-in-out;
    &:hover {
        background-color: #fff;
        color: #82D32D;
    }
`;

export default function PopUpInformations() {

    return (
        <PopUpInformationsStyle>
            <PopUpItemTitle>[헬로]안녕하세요</PopUpItemTitle>
            <PopUpItemDescription>맛있는 일본인의 소울푸드!</PopUpItemDescription>
            <PopUpItemPriceContainer>
                <Label text="이벤트특가"/>
                <SalePriceStyle>5,200원</SalePriceStyle>
                <NormalPriceStyle>6,000원</NormalPriceStyle>
            </PopUpItemPriceContainer>
            <PopUpItemBuyingInformations>
                <PopUpItemBuyingInformation>
                    <PopUpItemBuyingInformationTitle>적립금</PopUpItemBuyingInformationTitle>
                    <PopUpItemBuyingInformationContent>52원</PopUpItemBuyingInformationContent>
                </PopUpItemBuyingInformation>
                <PopUpItemBuyingInformation>
                    <PopUpItemBuyingInformationTitle>배송정보</PopUpItemBuyingInformationTitle>
                    <PopUpItemBuyingInformationContent>서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다</PopUpItemBuyingInformationContent>
                </PopUpItemBuyingInformation>
                <PopUpItemBuyingInformation>
                    <PopUpItemBuyingInformationTitle>배송비</PopUpItemBuyingInformationTitle>
                    <PopUpItemBuyingInformationContent>2,500원 <b>(40,000원 이상 구매 시 무료)</b></PopUpItemBuyingInformationContent>
                </PopUpItemBuyingInformation>
            </PopUpItemBuyingInformations>
            <PopUpItemCountContainer>
                <PopUpItemCountTitle>수량</PopUpItemCountTitle>
                <div>
                    <PopUpItemCount value="1"></PopUpItemCount>
                    <PopUpItemCountBtns>
                        <PopUpItemCountBtn><FaAngleUp/></PopUpItemCountBtn>
                        <PopUpItemCountBtn><FaAngleDown/></PopUpItemCountBtn>
                    </PopUpItemCountBtns>
                </div>
            </PopUpItemCountContainer>
            <PopUpItemTotalPriceContainer>
                <PopUpItemTotalPriceTitle>총 주문금액</PopUpItemTotalPriceTitle>
                <PopUpTotalPrice>5,200원</PopUpTotalPrice>
            </PopUpItemTotalPriceContainer>
            <PopUpItemOrderBtn>주문하기</PopUpItemOrderBtn>
        </PopUpInformationsStyle>
    )
}