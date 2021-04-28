import { useState, useEffect, useContext } from "react";
import { SideDishContext } from "../utilComponent/SideDishStore";

import _ from "../ref";
import useFetch from "../hooks/useFetch";
import Modal from "../utilComponent/modal/Modal";
import DetailTop from "./DetailTop";
import DetailBottom from "./DetailBottom";

const Detail = () => {
  const {
    isModalVisible, setIsModalVisible,
    currProductData, setCurrProductData,
  } = useContext(SideDishContext);

  const [ detailData, setDetailData ] = useState({});
  const { response, loading } = useFetch(_.URL + `detail/${currProductData}`);

  useEffect(() => {
    if(loading || !currProductData) return;
    setDetailData(response);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [currProductData]);

  const handleAddCloseBtnClick = () => {
    setDetailData({});
    setCurrProductData(null);
  };

  const visibleOptions = {
    isModalVisible,
    setIsModalVisible,
    addCbFunc: handleAddCloseBtnClick,
  };

  return (
    <Modal visibleOptions={visibleOptions}>
      <DetailTop {...detailData["data"]} />
      <DetailBottom />
    </Modal>
  );
};

export default Detail;
