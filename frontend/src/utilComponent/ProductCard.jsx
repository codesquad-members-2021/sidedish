import { useRef, useContext } from "react";
import styled from "styled-components";
import Tag from "./Tag";
import { SideDishContext } from "./SideDishStore";

const ProductCard = ({ size, item }) => {
  const { setIsModalVisible, setCurrProductData } = useContext(SideDishContext);
  const cardHover = useRef();
  const handleMouseEnter = () => cardHover.current.classList.remove("inactive");
  const handleMouseLeave = () => cardHover.current.classList.add("inactive");
  const handleErrorImg = ({ target }) => {
    // 임시로 일단 넣어놓음!!!
    target.src =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSefQj0CENwJ7hWH0i8XD9jsGOBFuPTcfuzWQEqqnX9sRcohlTwwyKc2Wsng7XI3q-jfns&usqp=CAU";
  };
  const handleProductClick = () => {
    setIsModalVisible(true);
    item && setCurrProductData(item.detail_hash);
  };
  return (
    <StyledCard size={size} onClick={handleProductClick}>
      <img
        src={item.image}
        alt={item.alt}
        onMouseEnter={handleMouseEnter}
        onError={handleErrorImg}
      />
      <div className="card__title">{item.title}</div>
      <div className="card__description">{item.description}</div>
      <div className="card__price">
        <span>{item.s_price}</span>
        {item.n_price && (<span className="card__sale_price">{item.n_price}원</span>)}
      </div>
      {item.badge && item.badge.map((type) => <Tag key={item.detail_hash} type={type} />)}
      <div
        className="card__hover inactive"
        ref={cardHover}
        onMouseLeave={handleMouseLeave}
      >
        <div className="hover__txtBox">
          {item.delivery_type.map((txt, i) => (<div key={i}>{txt}</div>))}
        </div>
      </div>
    </StyledCard>
  );
};

const StyledCard = styled.div`
  width: ${({ size }) => (size === "large" ? "384px" : "308px")};
  position: relative;
  cursor: pointer;

  img {
    border-radius: 5px;
  }
  img,
  .card__hover {
    width: ${({ size }) => (size === "large" ? "384px" : "308px")};
    height: ${({ size }) => (size === "large" ? "384px" : "308px")};
  }
  .card__title {
    margin-top: 16px;
    font-size: ${({ theme }) => theme.fontSize.M};
    line-height: 23px;
    color: ${({ theme }) => theme.colors.gray1};
  }
  .card__description {
    margin-top: 8px;
    font-size: 14px;
    line-height: 20px;
    color: ${({ theme }) => theme.colors.gray3};
  }
  .card__price {
    margin-top: ${({ size }) => (size === "large" ? "16px" : "8px")};
    margin-bottom: 16px;
    display: flex;
    & > span:last-child {
      font-size: ${({ theme }) => theme.fontSize.S};
      line-height: 20px;
      color: ${({ theme }) => theme.colors.gray4};
      text-decoration: line-through;
      margin-top: 6px;
    }
    & > span:first-child {
      margin: 0 8px 0 0;
      font-size: ${({ theme }) => theme.fontSize.L};
      font-weight: bold;
      line-height: 28px;
      color: ${({ theme }) => theme.colors.black};
      text-decoration: none;
    }
  }
  .inactive {
    visibility: hidden;
    opacity: 0;
  }
  .card__hover {
    position: absolute;
    top: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.6);
    border-radius: 5px;
    display: flex;
    align-items: center;
    justify-content: center;
    .hover__txtBox {
      font-size: ${({ theme }) => theme.fontSize.XL};
      font-weight: bold;
      line-height: 35px;
      color: ${({ theme }) => theme.colors.white};
      box-sizing: border-box;
      div {
        padding: 16px 0;
      }
      div:first-child {
        border-bottom: 1px solid #fff;
      }
    }
  }
`;

export default ProductCard;