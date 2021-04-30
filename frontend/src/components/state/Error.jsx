import styled from 'styled-components';
import { AlignTextCenter, theme } from '../style/Theme';
import Logo from '../atomic/Logo';

function Error() {
	return (
		<ErrorWapper>
			<div onClick={() => window.location.replace('/')}>
				<Logo>BANCHAN</Logo>
			</div>
			<Biggest>😧</Biggest>
			<Big>404 ERROR</Big>
			<Big>Oops, something went wrong...</Big>
		</ErrorWapper>
	);
}

export default Error;

const ErrorWapper = styled(AlignTextCenter)`
	flex-direction: column;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.8);
	z-index: 9999;
	color: ${theme.colors.white};
`;
const Big = styled.div`
	display: block;
	font-size: ${theme.fontSize.X_large};
`;
const Biggest = styled.div`
	font-size: 180px;
	margin-bottom: 60px;
`;
