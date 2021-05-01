import styled from 'styled-components/';
import { theme } from '../style/Theme';

function ItemPrice({ sPrice, nPrice, type }) {
	if (sPrice) sPrice = priceComma(sPrice);
	nPrice = priceComma(nPrice);
	return type === 'basic' ? (
		<>
			<ItemPriceBlock>{sPrice ? sPrice : nPrice}원</ItemPriceBlock>
			{sPrice && <ItemPriceNormal>{nPrice}원</ItemPriceNormal>}
		</>
	) : (
		<ItemPriceSmall>{sPrice ? sPrice : nPrice}원</ItemPriceSmall>
	);
}

export default ItemPrice;

const ItemPriceBlock = styled.span`
	font-size: ${theme.fontSize.larger};
	font-weight: Bold;
	margin-right: 10px;
`;
const ItemPriceSmall = styled.div`
	font-size: ${theme.fontSize.small};
	font-weight: Bold;
`;
const ItemPriceNormal = styled.span`
	text-decoration: line-through;
	color: ${theme.colors.grey_text};
`;
const priceComma = (price) => {
	return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
};
