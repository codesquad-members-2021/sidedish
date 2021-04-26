import { useState } from "react";
import styled from "styled-components";
import ThumbNail from "./ThumbNail";
import Badge from "../common/Badge";
import Button from "../common/Button";

const ContentWrapper = styled.div`
	display: flex;
	flex-direction: row;
	align-items: flex-start;
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: normal;
	font-size: 16px;
	line-height: 23px;
	margin: 16px 0px;
`;
const ContentTitle = styled.div`
	width: 76px;
	color: #828282;
`;
const ContentBody = styled.div`
	width: 364px;
	color: #4f4f4f;
`;
const Content = ({ title, body }) => {
	const free = "(40,000원 이상 구매 시 무료)";
	return (
		<ContentWrapper>
			<ContentTitle>{title}</ContentTitle>
			<ContentBody>
				{body.replace(free, "")}
				<b>{body.includes(free) ? free : ""}</b>
			</ContentBody>
		</ContentWrapper>
	);
};

const ModalWrapper = styled.div`
	visibility: ${(props) => (props.isOn ? "visible" : "hidden")};
	position: absolute;
	width: 1000px;
	height: 1076px;
	left: 220px;
	top: 170px;
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: normal;
`;

const Box = styled.div`
	width: 960px;
	height: 680px;
	background: #fff;
	border-radius: 5px 5px 0px 0px;
`;

const ProductInfo = styled.div`
	position: absolute;
	width: 440px;
	height: 416px;
	left: 472px;
	top: 48px;
`;

const ProductName = styled.div`
	font-weight: bold;
	font-size: 24px;
	line-height: 35px;
	margin-bottom: 16px;
`;

const ProductDescription = styled.div`
	font-size: 18px;
	line-height: 26px;
	color: #828282;
	margin-bottom: 16px;
`;

const ProductPrice = styled.div`
	display: flex;
	flex-direction: row;
	align-items: flex-end;
	padding: 0px;
	height: 35px;
	margin-bottom: 24px;
`;

const ProductPrice1 = styled.div`
	font-weight: bold;
	font-size: 24px;
	line-height: 35px;
	margin-right: 8px;
`;
const ProductPrice2 = styled.div`
	font-size: 16px;
	line-height: 23px;
	text-decoration-line: line-through;
	color: #828282;
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
const NumberUpButton = styled.div`
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
const NumberDownButton = styled.div`
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
const TotalPrice = styled.div`
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
const TotalPriceLabel = styled.div`
	height: 26px;
	font-weight: bold;
	font-size: 18px;
	line-height: 26px;
	text-align: right;
	color: #828282;
`;
const TotalPriceContent = styled.div`
	height: 46px;
	font-weight: bold;
	font-size: 32px;
	line-height: 46px;
	text-align: right;
	color: #010101;
	margin-left: 24px;
`;
const CloseButton = styled.div`
	position: absolute;
	width: 32px;
	height: 32px;
	left: 968px;
	top: 0px;
	svg {
		position: absolute;
	}
`;
const ButtonWrapper = styled.div`
	position: absolute;
	top:574px;
	left:472px;
`;

const Modal = ({ data, isModalOn, setModalOn }) => {
	const [count, setCount] = useState(1);
	const price = parseInt((data.prices[1] ? data.prices[1] : data.prices[0]).replace("원", "").replace(",", ""));
	return (
		<ModalWrapper isOn={isModalOn}>
			<Box>
				<ThumbNail {...data} />
				<ProductInfo>
					<ProductName>{data.name}</ProductName>
					<ProductDescription>{data.product_description}</ProductDescription>
					<ProductPrice>
						{data.badge ? <Badge badge={data.badge} /> : ""}
						<ProductPrice1>{data.prices[1] ? data.prices[1] : data.prices[0]}</ProductPrice1>
						<ProductPrice2>{data.prices[1] ? data.prices[0] : ""}</ProductPrice2>
					</ProductPrice>
					<Line />
					<Content title="적립금" body={data.point} />
					<Content title="배송정보" body={data.delivery_info} />
					<Content title="배송비" body={data.delivery_fee} />
					<Line />
					<Number>
						<NumberLabel>수량</NumberLabel>
						<NumberInput>{count}</NumberInput>
						<NumberUpButton onClick={() => setCount((count) => ++count)}>
							<svg width="8" height="6" viewBox="0 0 8 6" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M7 4.5L4 1.5L1 4.5" stroke="#333333" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
							</svg>
						</NumberUpButton>
						<NumberDownButton onClick={() => setCount((count) => (count > 0 ? --count : 0))}>
							<svg width="30" height="22" viewBox="0 0 30 22" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M12 9.5L15 12.5L18 9.5" stroke="#333333" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
								<rect x="0.5" y="0.5" width="29" height="21" stroke="#E0E0E0" />
							</svg>
						</NumberDownButton>
					</Number>
					<Line />
				</ProductInfo>
				<TotalPrice>
					<TotalPriceLabel>총 주문금액</TotalPriceLabel>
					<TotalPriceContent>{(price * count).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")}원</TotalPriceContent>
				</TotalPrice>
			</Box>
			<ButtonWrapper>
				<Button isAble={true} clickHandler={() => console.log("공사중")} />
			</ButtonWrapper>
			<CloseButton onClick={() => setModalOn(() => false)}>
				<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M1 1L17 17" stroke="white" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
				</svg>
				<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M17 1L1 17" stroke="white" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
				</svg>
			</CloseButton>
		</ModalWrapper>
	);
};

export default Modal;
