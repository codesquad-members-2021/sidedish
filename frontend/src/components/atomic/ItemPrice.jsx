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

function ItemPrice({ sPrice, nPrice }) {
	return (
		<>
			<ItemPriceBlock>{sPrice ? sPrice + '원' : nPrice}</ItemPriceBlock>
			{sPrice && <ItemPriceNormal>{nPrice}원</ItemPriceNormal>}
		</>
	);
}

export default ItemPrice;
