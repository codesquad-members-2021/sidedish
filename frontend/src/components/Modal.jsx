import styled from 'styled-components';
import { BiX } from 'react-icons/bi';
import * as basicStyle from './style/Theme';
import ModalPortal from '../ModalPortal';

function Modal({ children, modalMode, setModalState }) {
	return (
		<ModalPortal>
			<DarkBackground className="DARK">
				<StyledModal>{children}</StyledModal>
				<Xstyle onClick={() => setModalState(!modalMode)}>
					<BiX />
				</Xstyle>
			</DarkBackground>
		</ModalPortal>
	);
}

export default Modal;

const DarkBackground = styled(basicStyle.AlignTextCenter)`
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
	background-color: ${basicStyle.theme.colors.white};
	display: relative;
`;

const Xstyle = styled.button`
	font-size: ${basicStyle.theme.fontSize.larger};
	color: ${basicStyle.theme.colors.white};
	position: relative;
	top: -450px;
	right: -10px;
`;
