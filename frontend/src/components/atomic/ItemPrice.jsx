import styled from 'styled-components/';
import { theme } from '../style/Theme';

const ItemPriceBlock = styled.span`
	font-size: ${theme.fontSize.larger};
	font-weight: Bold;
	margin-right: 10px;
`;
const ItemPriceNormal = styled.span`
	text-decoration: line-through;
	color: ${theme.colors.grey_text};
`;
// const priceComma = (price) => {
// 	if(price.length<4) return;
// 	while(price.length>0){
// 		price.slice(price.length-1)
// 	}
// };
// priceComma('3000');
function ItemPrice({ sPrice, nPrice }) {
	return (
		<>
			<ItemPriceBlock>{sPrice ? sPrice : nPrice}원</ItemPriceBlock>
			{sPrice && <ItemPriceNormal>{nPrice}원</ItemPriceNormal>}
		</>
	);
}

export default ItemPrice;
