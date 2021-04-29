import { useEffect, useState } from "react";
import styled from "styled-components";
import ThumbNail from "./ModalThumbNail";
import Sum from "./ModalSum";
import Button from "./ModalButton";
import Info from "./ModalInfo";
import Yummy from "./ModalYummy";

const Modal = ({ data, isModalOn, setModalData, setModalOn }) => {
	const [count, setCount] = useState(1);
	const [isButtonAvailable, setButtonAvailable] = useState(true);
	useEffect(() => {
		setCount(1);
		setButtonAvailable(true);
	}, [data]);
	if (data) console.log(data.sibling);
	return data ? (
		<ModalWrapper isOn={isModalOn} yLocation={data.y}>
			<Box>
				<ThumbNail {...data} />
				<Info data={data} count={count} setCount={setCount} />
				<Sum count={count} data={data} />
			</Box>
			<OrderButtonWrapper>
				<Button type="order" isAble={isButtonAvailable} onClick={() => setButtonAvailable(false)} />
			</OrderButtonWrapper>
			<CloseButtonWrapper>
				<Button type="close" onClick={() => setModalOn(false)} />
			</CloseButtonWrapper>
			<Yummy sibling={data.sibling} setModalData={setModalData} />
		</ModalWrapper>
	) : (
		<ModalWrapper isOn={isModalOn} yLocation={0} />
	);
};

const ModalWrapper = styled.div`
	visibility: ${(props) => (props.isOn ? "visible" : "hidden")};
	position: absolute;
	left: 50%;
	top: ${(props) => `${props.yLocation}px`};
	transform: translate(-50%, 0);
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
const OrderButtonWrapper = styled.div`
	position: absolute;
	top: 574px;
	left: 472px;
`;
const CloseButtonWrapper = styled.div`
	position: absolute;
	width: 32px;
	height: 32px;
	left: 968px;
	top: 0px;
	svg {
		position: absolute;
	}
`;

export default Modal;
