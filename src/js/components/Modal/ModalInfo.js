import styled from "styled-components";
import Content from "./ModalContent";
import Price from "./ModalPrice";
import Button from "./ModalButton";

const Info = ({ data, count, setCount }) => {
	return (
		<InfoWrapper>
			<Name>{data.name}</Name>
			<Description>{data.product_description}</Description>
			<Price data={data} />
			<Line />
			<Content title="적립금" body={data.point} />
			<Content title="배송정보" body={data.delivery_info} />
			<Content title="배송비" body={data.delivery_fee} />
			<Line />
			<Number>
				<NumberLabel>수량</NumberLabel>
				<NumberInput>{count}</NumberInput>
				<UpButtonWrapper>
					<Button type="up" onClick={() => setCount((count) => ++count)} />
				</UpButtonWrapper>
				<DownButtonWrapper>
					<Button type="down" onClick={() => setCount((count) => (count > 0 ? --count : 0))} />
				</DownButtonWrapper>
			</Number>
			<Line />
		</InfoWrapper>
	);
};

const InfoWrapper = styled.div`
	position: absolute;
	width: 440px;
	height: 416px;
	left: 472px;
	top: 48px;
`;
const Name = styled.div`
	font-weight: bold;
	font-size: 24px;
	line-height: 35px;
	margin-bottom: 16px;
`;
const Description = styled.div`
	font-size: 18px;
	line-height: 26px;
	color: #828282;
	margin-bottom: 16px;
`;
const Line = styled.div`
	width: 440px;
	height: 1px;
	background: #e0e0e0;
	margin: 8px 0px;
`;
const Number = styled.div`
	position: relative;
	width: 440px;
	height: 41px;
	display: flex;
	align-items: center;
	margin: 16px 0px;
`;
const NumberLabel = styled.div`
	width: 60px;
	height: 23px;
	font-size: 16px;
	line-height: 23px;
	color: #828282;
`;
const NumberInput = styled.div`
	display: flex;
	align-items: center;
	justify-content: center;
	position: absolute;
	width: 57px;
	height: 41px;
	top: 0px;
	left: 354px;
	border: 1px solid #e0e0e0;
`;
const UpButtonWrapper = styled.div`
	display: flex;
	align-items: center;
	justify-content: center;
	position: absolute;
	width: 28px;
	height: 20px;
	left: 412px;
	top: 0px;
	border: 1px solid #e0e0e0;
`;
const DownButtonWrapper = styled.div`
	display: flex;
	align-items: center;
	justify-content: center;
	position: absolute;
	width: 28px;
	height: 20px;
	left: 412px;
	top: 21px;
	border: 1px solid #e0e0e0;
`;

export default Info;
