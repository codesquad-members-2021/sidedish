import { AlignTextCenter } from '../style/Theme';
import styled from 'styled-components';
const IMG = styled(AlignTextCenter)`
	width: ${(props) => {
		return props.size === 'L' ? '384' : props.size;
	}}px;
	height: ${(props) => {
		return props.size === 'L' ? '384' : props.size;
	}}px;
	margin-bottom: 32px;
	background-image: url(${(props) => props.image});
	background-size: cover;
	&:hover {
		background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
			url(${(props) => props.image});
		div {
			opacity: 1;
		}
	}
`;
export default IMG;
