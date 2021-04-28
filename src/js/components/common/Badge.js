import styled from "styled-components";

const Badge = ({ badge }) => <BadgeWrapper>{badge.map((e) => <Tag key={e} type={e}>{e}</Tag>)}</BadgeWrapper>;

const BadgeWrapper = styled.ul`
	display: flex;
	flex-direction: row;
	align-items: flex-start;
	padding: 0px;
	position: static;
`;

const Tag = styled.li`
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;

	position: static;
	width: ${(props) => (props.type === "이벤트특가" ? "97px" : "84px")};
	height: 28px;
	background: ${(props) => (props.type === "이벤트특가" ? "#82d32d" : "#86C6FF")};
	border-radius: 5px;

	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: bold;
	font-size: 14px;
	line-height: 20px;

	color: #fff;

	margin-right: 8px;
`;

export default Badge;
