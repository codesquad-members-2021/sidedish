import styled from 'styled-components';
import HeaderLeft from './HeaderLeft';
import HeaderRight from './headerRight';
import { theme } from '../style/Theme';

function Header({ loginState, setLoginState }) {
	return (
		<HeaderBlock>
			<HeaderLeft />
			<HeaderRight {...{ loginState, setLoginState }} />
		</HeaderBlock>
	);
}

export default Header;

const HeaderBlock = styled.div`
	width: 100%;
	height: 122px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: ${theme.padding.globalPadding};
	box-sizing: border-box;
`;
