import styled from 'styled-components/';
import { theme } from '../style/Theme';

const ItemTitle = styled.div.attrs((props) => ({
	fontsize:
		props.type === 'basic'
			? `${theme.fontSize.medium}px`
			: `${theme.fontSize.small}px`,
}))`
	font-weight: Bold;
	margin-bottom: 16px;
	&:hover {
		text-decoration: underline;
	}
`;

export default ItemTitle;
