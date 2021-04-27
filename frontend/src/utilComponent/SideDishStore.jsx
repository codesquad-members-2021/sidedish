import { createContext, useState, useMemo } from "react";

export const SideDishContext = createContext({
  isModalVisible: null,
  setIsModalVisible: () => {},
  currProductData: null,
  setCurrProductData: () => {},
});

const SideDishStore = ({ children }) => {
  const [isModalVisible, setIsModalVisible] = useState(true);        // DetailModal 상태 (보이기 / 숨김) // 추후 기본값 false로
  const [currProductData, setCurrProductData] = useState(null);         // DetailModal에 들어갈 데이터

  const value = useMemo(
    () => ({
      isModalVisible,
      setIsModalVisible,
      currProductData,
      setCurrProductData,
    }),
    [
      isModalVisible,
      setIsModalVisible,
      currProductData,
      setCurrProductData,
    ]
  );

  return (
    <SideDishContext.Provider value={value}>
      {children}
    </SideDishContext.Provider>
  );
};

export default SideDishStore;
