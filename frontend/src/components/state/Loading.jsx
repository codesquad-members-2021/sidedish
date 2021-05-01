import styled from 'styled-components';
import { AlignTextCenter } from '../style/Theme';

function Loading({ width, height }) {
	return (
		<LoadingWapper width={width} height={height}>
			<img src={'./load.jpg'} alt={'loading'} />
		</LoadingWapper>
	);
}

export default Loading;

const LoadingWapper = styled(AlignTextCenter)`
	width: ${(props) => props.width};
	height: ${(props) => props.height};
`;
