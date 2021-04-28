import styled from "styled-components";

const Sum = ({ data, count }) => (
	<SumWrapper>
		<Title>총 주문금액</Title>
		<Body>{(count * parseInt((data.prices[1] ? data.prices[1] : data.prices[0]).replace("원", "").replace(",", ""))).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")}원</Body>
	</SumWrapper>
);

const SumWrapper = styled.div`
	display: flex;
	flex-direction: row;
	justify-content: flex-end;
	align-items: center;
	padding: 0px;

	position: absolute;
	width: 360px;
	height: 46px;
	left: 552px;
	top: 496px;
`;
const Title = styled.div`
	height: 26px;
	font-weight: bold;
	font-size: 18px;
	line-height: 26px;
	text-align: right;
	color: #828282;
`;
const Body = styled.div`
	height: 46px;
	font-weight: bold;
	font-size: 32px;
	line-height: 46px;
	text-align: right;
	color: #010101;
	margin-left: 24px;
`;

export default Sum;
