import styled from "styled-components";

const ButtonWrapper = styled.button`
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
const Button = ({ isAble, clickHandler }) => (
	<ButtonWrapper isAble={isAble} onClick={isAble ? clickHandler : null}>
		{isAble ? "주문하기" : "일시품절"}
	</ButtonWrapper>
);

export default Button;
