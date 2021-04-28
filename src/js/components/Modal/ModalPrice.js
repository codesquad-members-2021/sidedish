import styled from "styled-components";
import Badge from "../common/Badge"

const Price = ({data}) => (
	<PriceWrapper>
		{data.badge && <Badge badge={data.badge} />}
		<SaledPrice>{data.prices[1] || data.prices[0]}</SaledPrice>
		<OriginPrice>{data.prices[1] && data.prices[0]}</OriginPrice>
	</PriceWrapper>
);

const PriceWrapper = styled.div`
	display: flex;
	flex-direction: row;
	align-items: flex-end;
	padding: 0px;
	height: 35px;
	margin-bottom: 24px;
`;
const SaledPrice = styled.div`
	font-weight: bold;
	font-size: 24px;
	line-height: 35px;
	margin-right: 8px;
`;
const OriginPrice = styled.div`
	font-size: 16px;
	line-height: 23px;
	text-decoration-line: line-through;
	color: #828282;
`;

export default Price