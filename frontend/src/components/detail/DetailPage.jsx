import styled from "styled-components";
import { theme, Button } from "../Theme";
import { BiX } from "react-icons/bi";
const DarkBackground = styled.div`
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(0, 0, 0, 0.8);
  z-index: 9999;
`;
const Modal = styled.div`
  width: 960px;
  height: 680px;
  background-color: ${theme.colors.white};
`;
const Xstyle = {
  color: theme.colors.white,
  position: "relative",
  top: "-320px",
};

function DetailPage({ ModalMode, setModalState }) {
  const handleClick = () => {
    setModalState(!ModalMode);
  };
  return (
    <DarkBackground>
      <Modal>내용</Modal>
      <Button onClick={handleClick}>
        <BiX style={Xstyle} />
      </Button>
    </DarkBackground>
  );
}

export default DetailPage;
