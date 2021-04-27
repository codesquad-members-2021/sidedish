import { useContext } from "react";
import { SideDishContext } from "../utilComponent/SideDishStore";
import Modal from "../utilComponent/modal/Modal";

import DetailTop from "./DetailTop";
import DetailBottom from "./DetailBottom";

const Detail = () => {
  const { isModalVisible, setIsModalVisible } = useContext(SideDishContext);
  const visibleOptions = { isModalVisible, setIsModalVisible };

  return (
    <Modal visibleOptions={visibleOptions} >
      <DetailTop />
      <DetailBottom />
    </Modal>
  );
};

export default Detail;

// --- Styled Components ---
