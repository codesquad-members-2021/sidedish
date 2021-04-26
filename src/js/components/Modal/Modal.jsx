import { useEffect, useState } from "react";
import styled from "styled-components";
import ThumbNail from "./ModalThumbNail";
import Content from "./ModalContent";
import Price from "./ModalPrice";
import Sum from "./ModalSum";
import Button from "../common/Button";
import UpButton from "./Button/UpButton";
import DownButton from "./Button/DownButton";
import CloseButton from "./Button/CloseButton";

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

const ButtonWrapper = styled.div`
	position: absolute;
	top: 574px;
	left: 472px;
`;

const Modal = ({ data, isModalOn, setModalOn }) => {
	const [count, setCount] = useState(1);
	const [isButtonAvailable, setButtonAvailable] = useState(true);
	useEffect(() => {
		setCount(1);
		setButtonAvailable(true);
	}, [data]);
	return data ? (
		<ModalWrapper isOn={isModalOn}>
			<Box>
				<ThumbNail {...data} />
				<ProductInfo>
					<ProductName>{data.name}</ProductName>
					<ProductDescription>{data.product_description}</ProductDescription>
					<Price data={data} />
					<Line />
					<Content title="적립금" body={data.point} />
					<Content title="배송정보" body={data.delivery_info} />
					<Content title="배송비" body={data.delivery_fee} />
					<Line />
					<Number>
						<NumberLabel>수량</NumberLabel>
						<NumberInput>{count}</NumberInput>
						<UpButton onClick={() => setCount((count) => ++count)} />
						<DownButton onClick={() => setCount((count) => (count > 0 ? --count : 0))} />
					</Number>
					<Line />
				</ProductInfo>
				<Sum count={count} data={data} />
			</Box>
			<ButtonWrapper>
				<Button isAble={isButtonAvailable} onClick={() => setButtonAvailable(false)} />
			</ButtonWrapper>
			<CloseButton onClick={() => setModalOn(false)} />
		</ModalWrapper>
	) : (
		<div>loading...</div>
	);
};

export default Modal;
