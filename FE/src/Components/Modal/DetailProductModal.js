import { useEffect } from 'react';
import styled from 'styled-components';
import closeImage from 'images/close.svg';
import LeftSide from 'Components/Modal//LeftSide/LeftSide';
import RightSide from 'Components/Modal/RightSide/RightSide';
import BottomSide from 'Components/Modal/BottomSide/BottomSide';
import useToggle from 'util/hooks/useToggle';
import preparingProduct from 'images/preparingProduct.png';

const DetailProductModal = ({ modalState }) => {
  const [isHide, setHide] = useToggle(true);

  useEffect(() => {
    if (modalState) {
      setHide.toggle();
    }
  }, [modalState]);

  return (
    <Background isHide={isHide}>
      <ModelWrapper>
        {modalState?.status === 'success' &&
          <div>
            <TopSide>
              {modalState && (
                <><LeftSide {...modalState} />
                  <RightSide {...modalState} /></>
              )}
            </TopSide>
            {!isHide && <BottomSide />}
          </div>
        }

        {modalState?.status === 'fail' &&
          <ErrorImgWrapper>
            <img src={preparingProduct} alt="" width='100%' />
          </ErrorImgWrapper>
        }
        <CloseButton src={closeImage} onClick={setHide.toggle} alt="" />
      </ModelWrapper>
    </Background >
  );
};

const Background = styled.div`
  position: fixed;
  display:${({ isHide }) => isHide ? 'none' : 'flex'};
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1;
  background: rgba(0, 0, 0, 0.6);
`;

const ModelWrapper = styled.div`
  display:flex;
  width:  1000px ;
  height: 1076px;
  margin: 0 auto;
  align-self: center;
  transform: scale(0.8);
`;

const TopSide = styled.div`
  display: flex;
  width: 960px;
  height: 680px;
  padding: 48px;
  box-sizing: border-box;
  background: #fff;
  border-radius: 5px 5px 0px 0px;
`;

const CloseButton = styled.img`
  margin: 0 0 auto auto;
  &:hover{
    cursor:pointer;
  }
`;

const ErrorImgWrapper = styled.div`
  height: inherit;
  width: 960px;
  background: #fff;
  border-radius: 5px;
`;
export default DetailProductModal;