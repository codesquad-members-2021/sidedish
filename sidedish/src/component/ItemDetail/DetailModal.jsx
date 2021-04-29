import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import { StyledBadges } from 'component/DishItem/DishItem';
import Counter from 'component/ItemDetail/Counter';
import Carousel from 'react-cool-kyle-carousel/dist/Carousel';
import RecommendItem from 'component/ItemDetail/RecommendItem';
import DetailCarousel from './DetailCarousel/DetailCarousel';

const DetailModal = ({ detailData, loading, title, badge }) => {
  const [count, setCount] = useState(1);
  const [topImg, setTopImg] = useState(detailData.top_image);
  const thumbImgList = detailData.thumb_images.map((img, i) => {
    return (
      <img className="thumb_img" key={i} src={img} alt={i} onClick={() => setTopImg(img)}></img>
    );
  });

  const handleClickUp = () => {
    setCount(count + 1);
  };

  const handleClickDown = () => {
    if (count - 1 <= 0) return;
    setCount(count - 1);
  };
  const prices = detailData.prices.map((price, i, arr) => {
    let type = 'sale_price';
    if (arr.length > 1) {
      type = i === 0 ? 'normal_price' : 'sale_price';
    }
    return (
      <span className={type} key={i}>
        {price}
      </span>
    );
  });

  const calculatePrice = (count, price) => {
    const parsedPrice = parseInt(price.replace(/[^0-9]/g, ''));
    const totalPrice = count * parsedPrice;
    const parsedTotalPrice =
      (totalPrice + '').replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ',') + '원';
    return parsedTotalPrice;
  };


  const recommendData = new Array(10).fill();   // API에 데이터가 없어서 1~10 임시 데이터를 넣었습니다.
  const recommendList = recommendData.map((v, idx) => <RecommendItem key={idx} value ={idx+1} />);

  if (loading) return <ModalStyle>Loading...</ModalStyle>;
  else if (!detailData) return <ModalStyle>데이터가 없습니다.</ModalStyle>;
  return (
    <ModalStyle>
      <Top>
        <TopLeft>
          <div className="top_img_container">
            <img className="top_image" src={topImg} alt={title}></img>
          </div>
          <div className="thumb_list_container">{thumbImgList}</div>
        </TopLeft>
        <TopRight>
          <div className="title">{title}</div>
          <div className="description">{detailData.product_description}</div>
          <div className="prices border">
            {badge &&
              badge.map((item, i) => (
                <StyledBadges className="badge" key={i} item={item}>
                  {item}
                </StyledBadges>
              ))}
            {prices.reverse()}
          </div>
          <div className="border">
            <div className="info">
              <span className="info_category">적립금</span>{' '}
              <span className="info_data">{detailData.point}</span>
            </div>
            <div className="info">
              <div className="info_category">배송정보</div>{' '}
              <div className="info_data">{detailData.delivery_info}</div>
            </div>
            <div className="info">
              <span className="info_category">배송비</span>{' '}
              <span className="info_data">{detailData.delivery_fee}</span>
            </div>
          </div>
          <div className="info_count border">
            <span className="info_category">수량</span>
            <Counter {...{ count, handleClickUp, handleClickDown }} />
          </div>
          <div className="info_total">
            <span className="info_total_fee">총 주문금액</span>
            <span className="info_total_fee_data">
              {calculatePrice(count, detailData.prices[detailData.prices.length - 1])}
            </span>
          </div>
          <div className="info_order">
            <span>주문하기</span>
          </div>
        </TopRight>
      </Top>
      <Bottom>
        <DetailCarousel recommendList = {recommendList} />
      </Bottom>
    </ModalStyle>
  );
};

export default DetailModal;

export const ModalStyle = styled.div`
  width: 960px;
  height: 95%;
  background-color: white;
  display: flex;
  flex-direction: column;
  overflow: auto;

  .error_center {
    justify-content: center;
    align-items: center;
  }
`;

const Top = styled.div`
  display: flex;
  justify-content: space-between;
  padding: 50px;
`;

const TopLeft = styled.div`
  .top_img_container {
    left: 35em;
    top: 48px;
    .top_image {
      width: 392px;
      height: 392px;
      border-radius: 5px;
    }
  }

  .thumb_list_container {
    display: flex;
    .thumb_img {
      width: 72px;
      height: 72px;
      border-radius: 5px;
      margin: 2px;
    }
  }
`;

const TopRight = styled.div`
  width: 50%;

  .info {
    display: flex;
    margin-bottom: 1rem;
  }

  .info:last-child {
    margin-bottom: 0;
  }

  .info_category {
    flex: 1;
  }

  .info_count {
    display: flex;
    justify-content: space-between;
    width: 100%;
    align-items: center;
  }

  .info_data {
    color: ${({ theme: { colors } }) => colors.darkGray};
    flex: 3;
  }

  .title {
    color: #333333;
    font-style: normal;
    font-weight: bold;
    font-size: 24px;
    line-height: 35px;
  }

  .description {
    color: ${({ theme: { colors } }) => colors.darkGray};
  }

  .prices {
    .sale_price {
      color: #333333;
      font-style: normal;
      font-weight: bold;
      font-size: 24px;
      line-height: 35px;
      margin-right: 0.5rem;
    }

    .normal_price {
      text-decoration-line: line-through;
      font-weight: normal;
      font-size: 16px;
      color: ${({ theme: { colors } }) => colors.darkGray};
    }

    .badge {
      margin-right: 1rem;
    }
  }

  .info_total {
    display: flex;
    align-items: center;
    justify-content: flex-end;
    padding: 1rem 0;
  }

  .info_total_fee {
    font-style: normal;
    font-weight: bold;
    font-size: 18px;
    color: ${({ theme: { colors } }) => colors.darkGray};
    padding-right: 1rem;
  }

  .info_total_fee_data {
    font-style: normal;
    font-weight: bold;
    font-size: 32px;
    color: black;
  }

  .border {
    border-bottom: 1px solid ${({ theme: { colors } }) => colors.whiteBlue};
    padding: 1rem 0;
  }

  .info_order {
    width: 100%;
    height: 58px;
    padding: 1rem;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 5px;
    background-color: ${({ theme: { colors } }) => colors.green};
    color: white;
  }
`;

const Bottom = styled.div`
`;
