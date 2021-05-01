import styled from 'styled-components';
import { theme } from '../style/Theme';
const HeaderLogo = styled.h1`
	font-family: Noto Sans KR;
	font-size: ${theme.fontSize.X_large};
	font-style: normal;
	font-weight: ${theme.fontWeight.bold};
	line-height: 58px;
	letter-spacing: -0.04em;
	text-align: left;
`;
function Logo({ children }) {
	return <HeaderLogo>{children}</HeaderLogo>;
}
export default Logo;
