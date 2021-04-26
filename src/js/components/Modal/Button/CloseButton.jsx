import styled from "styled-components";

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

const CloseButton = ({ onClick }) => (
	<CloseButtonWrapper onClick={onClick}>
		<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M1 1L17 17" stroke="white" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
		</svg>
		<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M17 1L1 17" stroke="white" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
		</svg>
	</CloseButtonWrapper>
);

export default CloseButton;
