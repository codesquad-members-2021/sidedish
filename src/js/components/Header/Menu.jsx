import styled from "styled-components";

const MenuWrapper = styled.div``;
const MenuTitle = styled.div`
	font-weight: ${(props) => (props.isOn ? "bold" : "normal")};
	font-size: 16px;
	line-height: 23px;
	color: #333;
`;
const MenuBodyWrapper = styled.div`
	visibility: ${(props) => (props.isOn ? "visible" : "hidden")};
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	position: relative;
	top: 16px;
	padding: 16px;
	background: #fff;
	box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25);
	z-index: 1;
`;
const MenuBody = styled.div`
	font-size: 16px;
	line-height: 28px;
	color: #828282;
	&:hover {
		color: #333333;
		text-decoration-line: underline;
	}
`;

const Menu = ({ title, body, isOn, onMouseEnter, onMouseLeave }) => {
	return (
		<MenuWrapper onMouseEnter={onMouseEnter} onMouseLeave={onMouseLeave}>
			<MenuTitle isOn={isOn}>{title}</MenuTitle>
			<MenuBodyWrapper isOn={isOn}>
				{body.map((e) => (
					<MenuBody key={e}>{e}</MenuBody>
				))}
			</MenuBodyWrapper>
		</MenuWrapper>
	);
};

export default Menu