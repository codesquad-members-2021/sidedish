import styled from 'styled-components';
import { theme } from '../style/Theme';
function OrderInfoSection({ point, deliveryInfo, deliveryFee }) {
	return (
		<PointDeliveryInfoBlock>
			<ItemDesc>적립</ItemDesc>
			<DetailText>{point}</DetailText>
			<ItemDesc>배송정보</ItemDesc>
			<DetailText>{deliveryInfo}</DetailText>
			<ItemDesc>배송비</ItemDesc>
			<DetailText>{deliveryFee}</DetailText>
		</PointDeliveryInfoBlock>
	);
}
export default OrderInfoSection;
const PointDeliveryInfoBlock = styled.div`
	display: grid;
	grid-template-columns: 60px 364px;
	grid-gap: 16px;
`;
const ItemDesc = styled.div`
	font-size: ${theme.fontSize.medium};
	color: ${theme.colors.grey_text};
	margin-bottom: 16px;
`;
const DetailText = styled.div`
	color: ${theme.colors.deep_grey_text};
`;
