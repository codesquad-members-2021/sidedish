import React, { useState } from 'react';
import styled from 'styled-components';
import DishHover from './DishHover';
import ItemDetail from 'component/ItemDetail/ItemDetail';

const DishItem = ({
  item: { detail_hash, image, alt, delivery_type, title, description, s_price, n_price, badge },
  size,
}) => {
  const [isHover, setIsHover] = useState(false);
  const [showDetail, setShowDetail] = useState(false);

  const handleErrorImg = ({ target }) => {
    target.src =
      'https://images.unsplash.com/photo-1497752531616-c3afd9760a11?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80';
  };

  const toggleModal = () => {
    setShowDetail((showDetail) => !showDetail);
  };

  const handleMouseEnter = () => setIsHover(true);

  const handleMouseLeave = () => setIsHover(false);

  const getImgSize = (size) => (size === 'L' ? '384px' : '308px');

  return (
    <>
      <StyledDishItem
        size={size}
        onMouseEnter={handleMouseEnter}
        onMouseLeave={handleMouseLeave}
        onClick={toggleModal}
      >
        <div className="imgContainer">
          {isHover && <DishHover delivery_type={delivery_type} size={size} />}
          <img
            src={image}
            alt={alt}
            width={getImgSize(size)}
            height={getImgSize(size)}
            onError={handleErrorImg}
          />
        </div>
        <div className="title">{title}</div>
        <div className="description">{description}</div>
        <div className="price">
          <span className="mainPrice">{s_price}</span>
          {n_price && <span className="subPrice">{n_price}원</span>}
        </div>
        {badge &&
          badge.map((item, i) => (
            <StyledBadges key={i} item={item}>
              {item}
            </StyledBadges>
          ))}
      </StyledDishItem>
      {showDetail && (
        <ItemDetail id={detail_hash} toggleModal={toggleModal} title={title} badge={badge} />
      )}
    </>
  );
};

export default DishItem;

const StyledDishItem = styled.div`
  width: ${({ size }) => (size === 'L' ? '384px' : '308px')};
  height: ${({ size }) => (size === 'L' ? '540px' : '456px')};
  .imgContainer {
    position: relative;
  }
  img {
    border-radius: 5px;
    margin-bottom: 16px;
  }
  .title {
    width: 308px;
    margin-bottom: 8px;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
  }
  .description {
    width: 308px;
    margin-bottom: 8px;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
  }
  .price {
    margin-bottom: 16px;
  }
  .mainPrice {
    font-size: 1.1rem;
    font-weight: 700;
  }
  .subPrice {
    padding-left: 8px;
    font-size: 0.8rem;
    color: #bdbdbd;
    text-decoration: line-through;
  }
`;

export const StyledBadges = styled.div`
  display: inline-block;
  border-radius: 5px;
  padding: 4px 16px 4px 16px;
  color: ${({ theme: { colors } }) => colors.white};
  background-color: ${({ theme: { colors }, item }) =>
    item === '이벤트특가' ? colors.green : colors.lightBlue};
`;
