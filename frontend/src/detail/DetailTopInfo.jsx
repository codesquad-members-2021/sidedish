import styled, { css } from "styled-components";
import { cssTranslate } from "../style/CommonStyledCSS";
import Tag from "../utilComponent/Tag";
import Button from "../utilComponent/Button";

const DetailTopInfo = () => {
  return (
    <StyledDetailTopInfo>
      {/* 상품명, 상품설명, 가격 */}
      <Name>상품명</Name>
      <Desc>상품설명설명</Desc>
      <ProductPrice>
        <Tag type="이벤트특가" />
        <Price>5,700원</Price>
        <Price prevPrice>6,500원</Price> {/* prevPrice가 있다면 할인중 */}
      </ProductPrice>

      <Line />

      {/* 적립금, 배송정보, 배송비 */}
      <AdditionalInfo>
        <span className="label">적립금</span>
        <span className="text">52원</span>
      </AdditionalInfo>
      <AdditionalInfo>
        <span className="label">배송정보</span>
        <span className="text">
          서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)
          <br />
          [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.
        </span>
      </AdditionalInfo>
      <AdditionalInfo>
        <span className="label">배송비</span>
        <span className="text">
          2,500원
          <span className="bold"> (40,000원 이상 구매 시 무료)</span>
        </span>
      </AdditionalInfo>

      <Line />

      {/* 수량 */}
      <AdditionalInfo>
        <span className="label">수량</span>
        <InputVolume name="volume" type="number" />
      </AdditionalInfo>

      <Line />

      {/* 총 주문금액 & 주문하기 Btn */}
      <TotalPrice>
        <span className="total--label">총 주문금액</span>
        <span className="total--price">5200원</span>
      </TotalPrice>

      <Order>
        <Button type={"order"} />
      </Order>

    </StyledDetailTopInfo>
  );
};

export default DetailTopInfo;

// --- Styled Components ---
const StyledDetailTopInfo = styled.div`
  font-family: ${({ theme }) => theme.fontFamily};
  min-width: 440px;
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
const InputVolume = styled.input`
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