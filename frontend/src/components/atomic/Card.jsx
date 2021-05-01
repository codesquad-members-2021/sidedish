import styled from 'styled-components';
const Card = styled.div`
	margin-top: 20px;
	overflow: hidden;
	width: ${(props) => (props.size === 'L' ? '384px' : '308px')};
	padding: 0 ${(props) => `${props.padding}px`};
`;
export default Card;
