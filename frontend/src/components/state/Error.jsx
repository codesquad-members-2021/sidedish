import styled from 'styled-components';
import { AlignTextCenter } from '../Theme';
const ErrorWapper = styled(AlignTextCenter)``;

function Error({ style }) {
	return (
		<ErrorWapper style={style}>
			<img src={'./400Error.png'} alt={'400Error'} style={style} />
		</ErrorWapper>
	);
}

export default Error;
