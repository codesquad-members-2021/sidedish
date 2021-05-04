import styled from "styled-components";
import { FaTimes } from "react-icons/fa";
import PopUpImages from "./PopUpImages";
import PopUpInformations from "./PopUpInformations";
import PopUpItemsSlide from "./PopUpItemsSlide";
import SkeletonPopUpContainerBody from "./SkeletonPopUpContainerBody";
import {
  usePopUpToggleContext,
  useSetPopUpToggleContext,
  useDetailContext,
} from "../../Context";

const PopUpContainerStyle = styled.div`
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  z-index: 1;
  &:before {
    content: "";
    position: fixed;
    top: 0;
    left: 0;
    width: 100vw;
    height: 100vh;
    background-color: rgba(0, 0, 0, 0.5);
    z-index: -1;
  }
  & > div {
    position: relative;
    width: 60rem;
    margin: 6vh auto;
  }
`;

const PopUpContainerBody = styled.div`
  background-color: #fff;
  width: 100%;
  height: 88vh;
  overflow-y: auto;
  &::-webkit-scrollbar {
    width: 0.875rem;
  }
  &::-webkit-scrollbar-thumb {
    background-color: #cacaca;
    border-radius: 0.375rem;
    &:hover {
      background-color: #b2b2b2;
    }
  }
  &::-webkit-scrollbar-track {
    background-color: #eee;
  }
`;

const PopUpDetailContainerStyle = styled.div`
  padding: 3rem;
  display: grid;
  grid-template-columns: 24.5rem auto;
  grid-gap: 2rem;
  position: relative;
`;

const CloseBtnStyle = styled.button`
  color: #fff;
  opacity: 0.8;
  position: absolute;
  right: -2.5rem;
  font-size: 1.25rem;
  cursor: pointer;
  &:hover {
    opacity: 1;
  }
`;

export default function PopUpContainer() {
  const toggle = usePopUpToggleContext();
  const dispatch = useSetPopUpToggleContext();
  const detailData = useDetailContext();
  const onClick = () => {
    dispatch(false);
  };
  if (!toggle) return null;
  return (
    <PopUpContainerStyle>
      <div>
        <CloseBtnStyle onClick={onClick}>
          <FaTimes></FaTimes>
        </CloseBtnStyle>
        {detailData ? (
          <PopUpContainerBody>
            <PopUpDetailContainerStyle>
              <PopUpImages />
              <PopUpInformations />
            </PopUpDetailContainerStyle>
            <PopUpItemsSlide />
          </PopUpContainerBody>
        ) : (
          <SkeletonPopUpContainerBody />
        )}
      </div>
    </PopUpContainerStyle>
  );
}
