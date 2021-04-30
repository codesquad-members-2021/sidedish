import styled from 'styled-components';
import { BiX } from 'react-icons/bi';
import { theme, Button, AlignTextCenter } from './style/Theme';
import ModalPortal from '../ModalPortal';

function Modal({ children, modalMode, setModalState }) {
	const handleClick = () => setModalState(!modalMode);

	return (
		<ModalPortal>
			<DarkBackground className="DARK">
				<StyledModal>{children}</StyledModal>
				<Button onClick={handleClick}>
					<BiX style={Xstyle} />
				</Button>
			</DarkBackground>
		</ModalPortal>
	);
}

export default Modal;

const DarkBackground = styled(AlignTextCenter)`
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.8);
	z-index: 9999;
`;

const StyledModal = styled.div`
	width: 960px;
	height: auto;
	background-color: ${theme.colors.white};
	display: relative;
`;

const Xstyle = {
	color: theme.colors.white,
	position: 'relative',
	top: '-450px',
	right: '-10px',
	display: 'absolute',
};
