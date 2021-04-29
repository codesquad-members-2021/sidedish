import styled from 'styled-components';
import { FaAngleUp, FaAngleDown } from 'react-icons/fa';
import { useState } from 'react';
import PopUpItemOrderResult from "./PopUpItemOrderResult";
import API from "../../../common/api.js";
import { addCommaToNumber } from '../../../common/util.js';

const PopUpItemCountContainerStyle = styled.div`
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
  background-color: #82d32d;
  color: #fff;
  font-size: 1.125rem;
  font-weight: 600;
  border-radius: 0.3125rem;
  border: 1px solid #82d32d;
  padding: 1rem;
  text-align: center;
  cursor: pointer;
  width: 100%;
  transition: all 0.2s ease-in-out;
  &:hover {
    background-color: #fff;
    color: #82d32d;
  }
`;

export default function PopUpItemCountContainer ({ price, id }) {
    const [ count, setCount ] = useState(1);
    const [ orderResult, setOrderResult ] = useState(null);

    const onChangeCount = count => {
        setOrderResult(null);
        setCount(count);
    };

    const onMakeOrder = async () => {
        const resultData = await API(`/buy/${id}/${count}`);
        setOrderResult(resultData.result);
        setTimeout(() => setOrderResult(null), 2500);
    }

    return (
        <>
            <PopUpItemCountContainerStyle>
                <PopUpItemCountTitle>수량</PopUpItemCountTitle>
                <div>
                    <PopUpItemCount value={count}></PopUpItemCount>
                    <PopUpItemCountBtns>
                        <PopUpItemCountBtn onClick={() => onChangeCount(count + 1)}><FaAngleUp/></PopUpItemCountBtn>
                        <PopUpItemCountBtn onClick={() => count > 0 ? onChangeCount(count - 1) : null }><FaAngleDown/></PopUpItemCountBtn>
                    </PopUpItemCountBtns>
                </div>
            </PopUpItemCountContainerStyle>
                <PopUpItemTotalPriceContainer>
                <PopUpItemTotalPriceTitle>총 주문금액</PopUpItemTotalPriceTitle>
                <PopUpTotalPrice>{addCommaToNumber(price * count)}원</PopUpTotalPrice>
            </PopUpItemTotalPriceContainer>
            <PopUpItemOrderBtn onClick={onMakeOrder}>주문하기</PopUpItemOrderBtn>
            { orderResult !== null ? <PopUpItemOrderResult result={orderResult} /> : null}
        </>
    )
}



