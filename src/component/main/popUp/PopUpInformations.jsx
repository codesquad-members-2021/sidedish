import styled from "styled-components";
import Label from "../../util/Label";
import PopUpItemCountContainer from "./PopUpItemCountContainer";
import { useDetailContext } from "../../Context";
import { addCommaToNumber } from "../../../common/util.js";

const PopUpInformationsStyle = styled.div``;

const PopUpItemTitle = styled.div`
  font-size: 1.5rem;
  font-weight: 600;
  margin-bottom: 1rem;
`;

const PopUpItemDescription = styled.div`
  font-size: 1.125rem;
  color: #828282;
  margin-bottom: 1rem;
`;

const PopUpItemPriceContainer = styled.div`
  margin-bottom: 1.5rem;
  display: flex;
  align-items: flex-end;
`;

const SalePriceStyle = styled.div`
  font-size: 1.5rem;
  font-weight: 600;
  margin-left: 0.5rem;
  margin-right: 0.5rem;
`;

const NormalPriceStyle = styled.div`
  color: #828282;
  text-decoration: line-through;
`;

const PopUpItemBuyingInformations = styled.div`
  border-top: 1px solid #e0e0e0;
  border-bottom: 1px solid #e0e0e0;
  padding: 0.5rem 0;
`;

const PopUpItemBuyingInformation = styled.div`
  display: grid;
  grid-template-columns: 5rem auto;
  margin-top: 1rem;
  &:last-child {
    margin-bottom: 1rem;
  }
`;

const PopUpItemBuyingInformationTitle = styled.div`
  color: #828282;
  line-height: 1.5rem;
`;

const PopUpItemBuyingInformationContent = styled.div`
  line-height: 1.5rem;
`;

export default function PopUpInformations() {
  const detailData = useDetailContext();
  const {
    _id,
    title,
    description,
    price,
    discount,
    stock,
    point,
    delivery_fee,
    delivery_info,
  } = detailData;

  return (
    <PopUpInformationsStyle>
      <PopUpItemTitle>{title}</PopUpItemTitle>
      <PopUpItemDescription>{description}</PopUpItemDescription>
      <PopUpItemPriceContainer>
        <Label text="이벤트특가" />
        <SalePriceStyle>
          {addCommaToNumber(Math.floor(price - price * (discount / 100)))}원
        </SalePriceStyle>
        <NormalPriceStyle>{addCommaToNumber(price)}원</NormalPriceStyle>
      </PopUpItemPriceContainer>
      <PopUpItemBuyingInformations>
        <PopUpItemBuyingInformation>
          <PopUpItemBuyingInformationTitle>
            적립금
          </PopUpItemBuyingInformationTitle>
          <PopUpItemBuyingInformationContent>
            {point}원
          </PopUpItemBuyingInformationContent>
        </PopUpItemBuyingInformation>
        <PopUpItemBuyingInformation>
          <PopUpItemBuyingInformationTitle>
            배송정보
          </PopUpItemBuyingInformationTitle>
          <PopUpItemBuyingInformationContent>
            {delivery_info}
          </PopUpItemBuyingInformationContent>
        </PopUpItemBuyingInformation>
        <PopUpItemBuyingInformation>
          <PopUpItemBuyingInformationTitle>
            배송비
          </PopUpItemBuyingInformationTitle>
          <PopUpItemBuyingInformationContent>
            {delivery_fee}
          </PopUpItemBuyingInformationContent>
        </PopUpItemBuyingInformation>
      </PopUpItemBuyingInformations>
      <PopUpItemCountContainer
        price={Math.floor(price - price * (discount / 100))}
        id={_id}
      />
    </PopUpInformationsStyle>
  );
}
