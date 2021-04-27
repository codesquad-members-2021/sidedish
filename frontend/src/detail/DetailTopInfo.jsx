import styled, { css } from "styled-components";
import Tag from "../utilComponent/Tag";

const DetailTopInfo = () => {
  return (
    <StyledDetailTopInfo>
      {/* 상품명, 상품설명, 가격 */}
      <Name>상품명</Name>
      <Desc>상품설명설명</Desc>
      <ProductPrice>
        <Tag type="이벤트특가" />
        <Price>5,700원</Price>
        <Price prevPrice>6,500원</Price>  {/* prevPrice가 있다면 할인중 */}
      </ProductPrice>

      <Line />
      {/* 적립금, 배송정보, 배송비 */}
      

      <Line />
      {/* 수량 */}

      <Line />
      {/* 총 주문금액, 주문하기 */}


    </StyledDetailTopInfo>
  );
};

export default DetailTopInfo;

// --- Styled Components ---
const StyledDetailTopInfo = styled.div`
  font-family: ${({ theme }) => theme.fontFamily};
`;

// 1. 공통
// 1) css - 상품명 & 가격(할인가 아님!!)
const cssProductBold = css`
  font-weight: ${({ theme }) => theme.fontWeight.bold || "bold"};
  font-size: ${({ theme }) => theme.fontSize.XL || "24px"};
  color: ${({ theme }) => theme.colors.gray1 || "gray"};
`;

// 2) 구분선
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
  ${cssProductBold};
`;

const Desc = styled(ProductParagraph)`
  font-size: ${({ theme }) => theme.fontSize.MM || "18px"};
  color: ${({ theme }) => theme.colors.gray3 || "gray"};
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
      : cssProductBold}
  & + & {
    margin-left: 8px;
  }
`;

// ----

// 3. 적립금, 배송정보, 배송비