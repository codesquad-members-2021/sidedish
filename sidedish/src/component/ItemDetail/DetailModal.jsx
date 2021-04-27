import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import { StyledBadges } from 'component/DishItem/DishItem';

const DetailModal = ({ detailData, loading, title, badge }) => {
  const [topImg, setTopImg] = useState(detailData.top_image);
  const thumbImgList = detailData.thumb_images.map((img, i) => {
    return (
      <img className="thumb_img" key={i} src={img} alt={i} onClick={() => setTopImg(img)}></img>
    );
  });

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
  if (loading) return <ModalStyle>Loading...</ModalStyle>;
  if (!detailData) return <ModalStyle>데이터가 없습니다.</ModalStyle>;
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
            <div className="delivery">
              <span className="delivery_info">적립금</span>{' '}
              <span className="delivery_data">{detailData.point}</span>
            </div>
            <div className="delivery">
              <div className="delivery_info">배송정보</div>{' '}
              <div className="delivery_data">{detailData.delivery_info}</div>
            </div>
            <div className="delivery">
              <span className="delivery_info">배송비</span>{' '}
              <span className="delivery_data">{detailData.delivery_fee}</span>
            </div>
          </div>
          <div>{/* <span className="delivery_info">수량</span> <span className="">1</span> */}</div>
        </TopRight>
      </Top>
      {/* <Bottom>

      </Bottom> */}
    </ModalStyle>
  );
};

export default DetailModal;

const ModalStyle = styled.div`
  width: 70%;
  height: 90%;
  background-color: white;
  display: flex;
  flex-direction: column;
  padding: 50px;

  /* position: relative; */

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

const Top = styled.div`
  display: flex;
`;

const TopLeft = styled.div``;

const TopRight = styled.div`
  width: 50%;
  padding: 0 1rem;

  .delivery {
    display: flex;
    margin-bottom: 1rem;
  }

  .delivery:last-child {
    margin-bottom: 0;
  }

  .delivery_info {
    flex: 1;
  }

  .delivery_data {
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

  .border {
    border-bottom: 1px solid ${({ theme: { colors } }) => colors.whiteBlue};
    padding: 1rem 0;
  }
`;
