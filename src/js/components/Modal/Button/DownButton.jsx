import styled from "styled-components";

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

const DownButton = ({ onClick }) => (
	<DownButtonWrapper onClick={onClick}>
		<svg width="30" height="22" viewBox="0 0 30 22" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M12 9.5L15 12.5L18 9.5" stroke="#333333" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
			<rect x="0.5" y="0.5" width="29" height="21" stroke="#E0E0E0" />
		</svg>
	</DownButtonWrapper>
);

export default DownButton;
