import React, { useState, useEffect, useRef } from 'react';
import styled from 'styled-components';
import { EventSpecialBadge } from '../../../common/badge.js';
import SmallInfoContainer from './SmallInfoContainer.js';
import Counter from './Counter.js';

const StyledOrderInfo = styled.div`
  flex: 0 0 53%;
  box-sizing: border-box;
  padding-right: 16px;
  text-align: left;
  font-family: "Noto Sans KR";

  & > * {
    margin: 16px 0px;
  }

  .title {
    color: #333333;
    font-size: 22px;
    line-height: 28px;
  }

  .product-desc {
    color: #828282;
    font-size: 16px;
    line-height: 24px;
  }

  .price-cont {
    display: flex;
    align-items: flex-end;

    * + * {
      margin-left: 5px;
    }

    .discounted {
      color: #333333;
      font-weight: 800;
      font-size: 22px;
      line-height: 32px;
    }

    .original {
      color: #828282;
      font-size: 16px;
      line-height: 23px;
      text-decoration-line: line-through;
    }
  }

  .line {
    width: 100%;
    height: 1px;
    background-color: #E0E0E0;
  }

  .counter-cont {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 100%;
    font-size: 13px;
    line-height: 21px;
    color: #828282;
  }

  .totalprice-cont {
    display: flex;
    align-items: center;
    justify-content: flex-end;
    font-weight: 800;
    font-size: 12px;
    line-height: 20px;
    color: #828282;

    .totalprice {
      margin-left: 18px;
      font-size: 26px;
      line-height: 34px;
      color: #010101;
    }
  }
`;

const OrderBtn = styled.button`
  width: 90%;
  height: 50px;
  margin-left: 5%;
  line-height: 26px;
  font-size: 18px;
  font-weight: 800;
  color: #FFFFFF;
  border: none;
  border-radius: 5px;
  background-color: #82D32D;
`;

function OrderInfo({ title, data }) {
  const priceRef = useRef(data.prices[1].match(/[0-9]*/g).join(''));
  const [totalPrice, setTotalPrice] = useState(data.prices[1]);

  const handleChangeCount = (count) => {
    setTotalPrice((priceRef.current * count).toLocaleString({ type: 'currency' }) + '원');
  }

  const getSmallInfosData = () => {
    // FIXME: is there a better way?
    return [
      ['포인트', data.point],
      ['배송정보', data.delivery_info],
      ['배송비', data.delivery_fee],
    ];
  }
  
  return (
    <StyledOrderInfo>
      <div className="title">{title}</div>
      <div className="product-desc">{data.product_description}</div>
      <div className="price-cont">
        <EventSpecialBadge/>
        <div className="discounted">{data.prices[1]}</div>
        <div className="original">{data.prices[0]}</div>
      </div>
      <div className="line"/>
      <SmallInfoContainer data={getSmallInfosData()}/>
      <div className="line"/>
      <div className="counter-cont">
        수량
        <Counter onChangeCount={handleChangeCount}/>
      </div>
      <div className="line"/>
      <div className="totalprice-cont">
        총 주문금액
        <span className="totalprice">{totalPrice}</span>
      </div>
      <OrderBtn className="order-btn">주문하기</OrderBtn>
    </StyledOrderInfo>
  )
}

export default OrderInfo;
