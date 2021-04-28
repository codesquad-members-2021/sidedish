import { useState, useEffect, useContext } from "react";
import { SideDishContext } from "../utilComponent/SideDishStore";

import _ from "../ref";
import Modal from "../utilComponent/modal/Modal";
import DetailTop from "./DetailTop";
import DetailBottom from "./DetailBottom";

const Detail = () => {
  const {
    isModalVisible, setIsModalVisible,
    currProductData, setCurrProductData,
  } = useContext(SideDishContext);

  // useFetch 사용안함 --
  const initialDetail = { result: null, error: null };
  const [ detailData, setDetailData ] = useState(initialDetail);
  const [ loading, setLoading ] = useState(true);

  const executeFetch = async (url, subject = null) => {
    try {
      const res = await fetch(url);
      const json = await res.json();
      setDetailData({
        ...detailData,
        result: {
          ...json,
          data: {
            ...json['data'],
            subject
          }
        }
      });
    } catch (error) {
      setDetailData({ ...detailData, error });
    }
  };

  useEffect(() => {
    if (!currProductData) return;
    const { alt: subject, detail_hash } = currProductData;
    executeFetch(_.URL + `detail/${detail_hash}`, subject);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [currProductData]);

  useEffect(() => !detailData.data && setLoading(false), [detailData]);
  // ----

  const handleAddCloseBtnClick = () => {
    setLoading(true);
    setDetailData(initialDetail);
    setCurrProductData(null);
  };

  const visibleOptions = {
    isModalVisible,
    setIsModalVisible,
    addCbFunc: handleAddCloseBtnClick,
  };

  return (
    !loading && 
      <Modal visibleOptions={visibleOptions}>
        <DetailTop {...detailData} />
        <DetailBottom />
      </Modal>
  );
};

export default Detail;
