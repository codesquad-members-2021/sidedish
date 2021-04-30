import { useEffect } from 'react';
import styled from 'styled-components';
import closeImage from 'images/close.svg';
import LeftSide from 'Components/Modal//LeftSide/LeftSide';
import RightSide from 'Components/Modal/RightSide/RightSide';
import BottomSide from 'Components/Modal/BottomSide/BottomSide';
import useToggle from 'util/hooks/useToggle';
import preparingProduct from 'images/preparingProduct.png';
import loadingImage from 'images/loading.gif';
// refetchModal
const DetailProductModal = ({ modalState, refetchModal }) => {
  const [isHide, setHide] = useToggle(true);
  const { loading, data, error } = modalState;

  useEffect(() => {
    if (loading) setHide.toggle();
    return () => { setHide.set(false); }
  }, [modalState]);

  return (
    <Background isHide={isHide}>
      <ModalWrapper>
        {loading &&
          <LoadingWrapper>
            <img src={loadingImage} alt="" width='100%' />
          </LoadingWrapper>
        }

        {data &&
          <div>
            <TopSide>
              {data && (
                <><LeftSide {...data} />
                  <RightSide {...data} /></>
              )}
            </TopSide>
            {!isHide && <BottomSide refetchModal={refetchModal}/>}
          </div>
        }

        {error &&
          <ErrorImgWrapper>
            <img src={preparingProduct} alt="" width='100%' />
          </ErrorImgWrapper>
        }
        <CloseButton src={closeImage} onClick={setHide.toggle} alt="" />
      </ModalWrapper>
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

const ModalWrapper = styled.div`
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

const LoadingWrapper = styled.div`
  height: inherit;
  width: 960px;
  background: #fff;
  border-radius: 5px;
  font-size: 50px;
`;

const ErrorImgWrapper = styled(LoadingWrapper)`
  height: inherit;
  width: 960px;
  background: #fff;
  border-radius: 5px;
  font-size: 50px;
`;

export default DetailProductModal;