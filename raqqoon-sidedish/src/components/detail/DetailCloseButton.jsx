import styled from 'styled-components';
import { IoCloseOutline } from 'react-icons/io5';
import { NONE } from 'const';

const DetailCloseButton = ({ setModalState, setOrderCount }) => {
  const handleClickCloseButton = () => {
    setModalState(NONE);
    setOrderCount(1);
  };

  return (
    <DetailCloseButtonDiv onClick={handleClickCloseButton}>
      <IoCloseOutline size={28} />
    </DetailCloseButtonDiv>
  );
};

export default DetailCloseButton;

const DetailCloseButtonDiv = styled.div`
  position: relative;
  top: 30px;
  left: 500px;
  color: #fff;
  display: flex;
  justify-content: center;
  align-items: center;
  cursor: pointer;
  z-index: 10;
`;
