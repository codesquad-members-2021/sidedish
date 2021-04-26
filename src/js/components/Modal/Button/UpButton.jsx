import styled from "styled-components";

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

const UpButton = ({ onClick }) => (
	<UpButtonWrapper onClick={onClick}>
		<svg width="8" height="6" viewBox="0 0 8 6" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M7 4.5L4 1.5L1 4.5" stroke="#333333" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
		</svg>
	</UpButtonWrapper>
);

export default UpButton;
