import { useState, useEffect, useContext } from "react";
import styled, { css } from "styled-components";
import { cssTranslate } from "../style/CommonStyledCSS";
import Tag from "../utilComponent/Tag";
import Button from "../utilComponent/Button";
import { changeAllToNumbers, threeDigitsComma } from "../util/util";
import useFetch from "../hooks/useFetch";
import { SideDishContext } from "../utilComponent/SideDishStore";

const DetailTopInfo = ({ data, hash }) => {
  const { setIsModalVisible } = useContext(SideDishContext)

  const [priceInfo, setPriceInfo] = useState({ prevPrice: null, price: null });
  const [quantity, setQuantity] = useState(1); // 수량
  const [totalPrice, setTotalPrice] = useState(0);
  const [isClickOrder, setIsClickOrder] = useState(false);

  const options = {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ client_id: "eve", detail_hash: hash, quantity }),
  };

  const { response } = useFetch("/api/order", {
    options,
    addProps: [isClickOrder],
    addFunc: () => setIsClickOrder(false),
    isExecuteFunc: true
  });

  useEffect(() => {
    if (!data || !data.prices || data.prices.length <= 0) return;
    const arrPrices = data.prices.map((v) => changeAllToNumbers(v));

    // 더 작은 값이 price, 큰 가격이 prevPrice
    if (arrPrices.length === 1)
      setPriceInfo({ ...priceInfo, price: arrPrices[0], prevPrice: null });
    else
      setPriceInfo({
        ...priceInfo,
        price: Math.min.apply(null, arrPrices),
        prevPrice: Math.max.apply(null, arrPrices),
      });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [data]);

  useEffect(() => {
    if (!priceInfo || !priceInfo.price) return;
    setTotalPrice(quantity * priceInfo.price);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [priceInfo]);

  useEffect(() => {
    if (!response || !response.status ) return;
    if (response.ok) setIsModalVisible(false);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [response]);

  const handleInputQuantityChange = ({ target }) => {
    if (target.value < 1) target.value = 1;
    else if (target.value > 20) target.value = 20;
    setQuantity(target.value);
    if (priceInfo && priceInfo.price)
      setTotalPrice(target.value * priceInfo.price);
  };

  const handleOrderClick = () => setIsClickOrder(true);

  return (
    data && (
      <StyledDetailTopInfo>
        {/* 상품명, 상품설명, 가격 */}
        <Name>{data.subject || "상품명"}</Name>
        <Desc>{data.product_description || "상품 설명"}</Desc>
        <ProductPrice>
          {data.badge &&
              data.badge
                .filter((type) => type)
                .map((type, i) => <Tag key={i} type={type} />)}
          {priceInfo && (
            <>
              {priceInfo.price && <Price>{threeDigitsComma(priceInfo.price)}원</Price>}
              {priceInfo.prevPrice && (
                <Price prevPrice>{threeDigitsComma(priceInfo.prevPrice)}원</Price>
              )}
            </>
          )}
        </ProductPrice>

        <Line />

        {/* 적립금, 배송정보, 배송비 */}
        <AdditionalInfo>
          <span className="label">적립금</span>
          <span className="text">{data.point || "0원"}</span>
        </AdditionalInfo>
        <AdditionalInfo>
          <span className="label">배송정보</span>
          <span className="text">
            {data.delivery_info || (
              <>
                서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)
                <br />
                [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.
              </>
            )}
          </span>
        </AdditionalInfo>
        <AdditionalInfo>
          <span className="label">배송비</span>
          <span className="text">
            {data.delivery_fee || (
              <>
                2,500원
                <span className="bold"> (40,000원 이상 구매 시 무료)</span>
              </>
            )}
          </span>
        </AdditionalInfo>

        <Line />

        {/* 수량 */}
        <AdditionalInfo>
          <span className="label">수량</span>
          <InputQuantity
            name="quantity"
            type="number"
            onChange={handleInputQuantityChange}
            value={quantity}
          />
        </AdditionalInfo>

        <Line />

        {/* 총 주문금액 & 주문하기 Btn */}
        <TotalPrice>
          <span className="total--label">총 주문금액</span>
          <span className="total--price">{threeDigitsComma(totalPrice)}원</span>
        </TotalPrice>

        <Order>
          <Button type={"order"} onClick={handleOrderClick} />
        </Order>
      </StyledDetailTopInfo>
    )
  );
};

export default DetailTopInfo;

// --- Styled Components ---
const StyledDetailTopInfo = styled.div`
  font-family: ${({ theme }) => theme.fontFamily};
  min-width: 440px;
  max-width: 440px;
`;

// 1. 공통
// 1) css - 상품명 & 가격(할인가 아님!!)
const cssNamePriceBold = css`
  font-weight: ${({ theme }) => theme.fontWeight.bold || "bold"};
  font-size: ${({ theme }) => theme.fontSize.XL || "24px"};
  color: ${({ theme }) => theme.colors.gray1 || "gray"};
`;

// 2) css - 상품설명 & "총 주문금액" 글자
const cssDescTotalLabel = css`
  font-size: ${({ theme }) => theme.fontSize.MM || "18px"};
  color: ${({ theme }) => theme.colors.gray3 || "gray"};
`;

// 3) 구분선
const Line = styled.div`
  width: 100%;
  height: 1px;
  margin: 24px 0;
  background-color: ${({ theme }) => theme.colors.gray5 || "lightgray"};
`;

// ----

// 2. 상품명, 상품설명, 가격
// 1) 상품명 & 상품설명 (Name / Desc)
const ProductParagraph = styled.p`
  & + & {
    margin-top: 16px;
  }
`;

const Name = styled(ProductParagraph)`
  ${cssNamePriceBold};
`;

const Desc = styled(ProductParagraph)`
  ${cssDescTotalLabel};
`;

// 2) 상품가격 ( Tag(Import) / Price / Price:prevPrice )
const ProductPrice = styled.div`
  ${Desc} + & {
    margin-top: 16px;
  }
`;

const Price = styled.span`
  // prevPrice는 현재 상품이 할인된 상품일 경우 쓰일 옵션!
  ${({ prevPrice }) =>
    prevPrice
      ? css`
          font-size: ${({ theme }) => theme.fontSize.M || "16px"};
          color: ${({ theme }) => theme.colors.gray3 || "gray"};
          text-decoration-line: line-through;
        `
      : cssNamePriceBold}
  & + & {
    margin-left: 8px;
  }
`;

// ----

// 3. 적립금, 배송정보, 배송비
const AdditionalInfo = styled.div`
  display: grid;
  grid-template-columns: 20% 80%;
  font-size: ${({ theme }) => theme.fontSize.S || "14px"};
  line-height: 23px;

  .label {
    color: ${({ theme }) => theme.colors.gray3 || "gray"};
  }

  .text {
    color: ${({ theme }) => theme.colors.gray2 || "gray"};

    .bold {
      font-weight: ${({ theme }) => theme.fontWeight.bold || 700};
    }
  }

  & + & {
    margin-top: 16px;
  }
`;

// ----

// 4. 수량 (AdditionalInfo안에 child로 들어감)
const InputQuantity = styled.input`
  ${cssTranslate};
  &::-webkit-inner-spin-button,
  &::-webkit-outer-spin-button {
    opacity: 1;
  }
  width: 20%;
  padding: 8px 4px;
  margin-left: auto;
  text-align: center;
  box-shadow: 0 0 0 0.3px ${({ theme }) => theme.colors.gray4 || "gray"};
  font-size: ${({ theme }) => theme.fontSize.M || "16px"};
`;

// 5. 총 주문금액 & 주문하기 버튼 (Import & Custom)
// 1) 총 주문금액
const TotalPrice = styled.div`
  ${Line} + & {
    margin-top: 8px;
  }
  display: flex;
  justify-content: flex-end;
  align-items: center;

  .total--label {
    ${cssDescTotalLabel};
  }

  .total--price {
    font-weight: ${({ theme }) => theme.fontWeight.bold || "bold"};
    font-size: ${({ theme }) => theme.fontSize.XXL || "32px"};
    color: ${({ theme }) => theme.colors.black || "#000"};
  }

  .total--label + .total--price {
    margin-left: 24px;
  }
`;

// 2) Import할 Button을 감싸는 Wrapper (주문하기 || 일시품절)
const Order = styled.div`
  margin: 48px 0;
`;
