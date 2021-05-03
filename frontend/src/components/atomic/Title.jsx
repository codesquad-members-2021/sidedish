import styled from 'styled-components/';
import { theme } from '../style/Theme';
const TitleBlock = styled.div`
	font-size: ${theme.fontSize.larger}px;
	font-weight: ${theme.fontWeight.bold};
	line-height: 34.75px;
	padding-bottom: 32px;
	box-sizing: border-box;
`;
function Title({ children }) {
	return <TitleBlock>{children}</TitleBlock>;
}

export default Title;
