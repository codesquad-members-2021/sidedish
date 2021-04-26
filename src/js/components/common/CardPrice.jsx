import styled from "styled-components";

const PriceWrapper = styled.div`
	display: flex;
	flex-direction: row;
	align-items: flex-end;
	padding: 0px;
	position: static;
	height: 29px;
	left: 0px;
	top: 467px;
	margin-bottom: 16px;
`;
const SaledPrice = styled.div`
	font-weight: bold;
	font-size: 20px;
	line-height: 29px;
	color: #010101;
	margin-right: 8px;
`;
const OriginPrice = styled.div`
	font-size: 14px;
	line-height: 20px;
	text-decoration-line: line-through;
	color: #bdbdbd;
`;

const Price = ({n_price, s_price}) => (
	<PriceWrapper>
		<SaledPrice>{n_price ? n_price + "원" : s_price}</SaledPrice>
		<OriginPrice>{!n_price || s_price}</OriginPrice>
	</PriceWrapper>
);

export default Price;
