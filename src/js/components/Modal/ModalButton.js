import styled from "styled-components";

const Button = ({ onClick, type, isAble }) => {
	const svg = {
		close: `<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M1 1L17 17" stroke="white" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" /></svg><svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M17 1L1 17" stroke="white" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" /></svg>`,
		up: `<svg width="8" height="6" viewBox="0 0 8 6" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M7 4.5L4 1.5L1 4.5" stroke="#333333" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" /></svg>`,
		down: `<svg width="30" height="22" viewBox="0 0 30 22" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 9.5L15 12.5L18 9.5" stroke="#333333" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" /><rect x="0.5" y="0.5" width="29" height="21" stroke="#E0E0E0" /></svg>`,
	};
	return type === "order" ? (
		<OrderButton isAble={isAble} onClick={isAble && onClick}>
			{isAble ? "주문하기" : "일시품절"}
		</OrderButton>
	) : (
		<div dangerouslySetInnerHTML={{ __html: svg[type] }} onClick={onClick} />
	);
};

const OrderButton = styled.button`
	background-repeat: no-repeat;
	cursor: pointer;
	overflow: hidden;
	outline: none;
	border: none;
	width: 440px;
	height: 58px;

	background: ${(props) => (props.isAble ? "#82d32d" : "#E0E0E0")};
	&:hover {
		background: ${(props) => (props.isAble ? "#66a523" : "#E0E0E0")};
	}
	box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25);
	backdrop-filter: blur(4px);
	border-radius: 5px;
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: bold;
	font-size: 18px;
	line-height: 26px;
	color: ${(props) => (props.isAble ? "#fff" : "#BDBDBD")};
`;

export default Button;
