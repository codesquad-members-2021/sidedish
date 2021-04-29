import styled from "styled-components";
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
    sildeData
  } = useContext(SideDishContext);

  // useFetch 사용안함 --
  const initialDetail = { result: null, error: null };
  const [ detailData, setDetailData ] = useState(initialDetail);
  const [ loading, setLoading ] = useState(true);

  const executeFetch = async (url, addProps = { subject: null, badge: null } ) => {
    try {
      const res = await fetch(url);
      const json = await res.json();
      const { subject, badge } = addProps;
      setDetailData({
        ...detailData,
        result: {
          ...json,
          data: {
            ...json['data'],
            subject, badge
          }
        }
      });
    } catch (error) {
      setDetailData({ ...detailData, error });
    }
  };

  useEffect(() => {
    if (!currProductData) return;
    const { alt: subject, badge, detail_hash } = currProductData;
    executeFetch(_.URL + `detail/${detail_hash}`, {subject, badge});
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
        <StyledDetail>
          <DetailTop {...detailData} />
          <DetailBottom sildeData = {sildeData} />
        </StyledDetail>
      </Modal>
  );
};

export default Detail;

// --- Styled Components ---
const StyledDetail = styled.div`
  max-width: 960px;
`;