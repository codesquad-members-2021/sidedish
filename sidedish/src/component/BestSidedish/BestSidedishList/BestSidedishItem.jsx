import React from 'react';
import styled from 'styled-components';

const BestSidedishItem = ({
  item: { detail_hash, image, alt, delivery_type, title, description, n_price, s_price, badge },
}) => {
  return (
    <SidedishItem>
      <img className="image" alt={alt} src={image}></img>
      <div className="detail">
        <div className="title">{title}</div>
        <div className="description">{description}</div>
        <div className="price">
          <span className="salePrice">{s_price}</span>
          <span className="normalPrice">{n_price}원</span>
        </div>
        <div className="badges">
          {badge &&
            badge.map((item, i) => (
              <span key={i} className="badge">
                {item}
              </span>
            ))}
        </div>
      </div>
    </SidedishItem>
  );
};

export default BestSidedishItem;

const SidedishItem = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  color: #333333, 100%;
  line-height: 1.8rem;

  .detail {
    margin-top: 20px;
  }

  .image {
    width: 384px;
    height: 384px;
    border: 0.5px dashed red;
    border-radius: 5px;
  }

  .description {
    font-size: 14px;
    color: #828282;
  }

  .salePrice {
    font-size: 20px;
    font-weight: bold;
    line-height: 3rem;
    margin-right: 0.5rem;
  }

  .normalPrice {
    color: #bdbdbd;
    text-decoration-line: line-through;
    font-size: 14px;
  }

  .badges {
    display: flex;
    padding-top: 10px;
  }

  .badge {
    width: 5rem;
    font-size: 14px;
    color: #ffff;
    background: #82d32d;
    border-radius: 5px;
    text-align: center;
    line-height: 1.5rem;
    margin-right: 5px;
  }
`;
