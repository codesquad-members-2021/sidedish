import ReactDOM from "react-dom";

const Modal = ({ children }) => {
  const modal = document.querySelector("#global-modal");
  return ReactDOM.createPortal(children, modal);
};

export default Modal;
