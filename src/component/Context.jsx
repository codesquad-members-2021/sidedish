import { createContext, useContext, useState } from "react";
import API from "../common/api.js";

const DetailDataContext = createContext();
const PopUpToggleContext = createContext();
const OnFetchDetailDataContext = createContext();
const SetPopUpToggleContext = createContext();

export function ContextProvider({ children }) {
  const [detailData, setDetailData] = useState(null);
  const [popUpToggle, setPopUpToggle] = useState(false);

  const onFetchDetailData = async (id) => {
    const data = await API(`/detail/${id}`);
    if(data) {
      setDetailData(data);
      setPopUpToggle(!popUpToggle);
    }
  }

  return (
    <DetailDataContext.Provider value={detailData}>
      <OnFetchDetailDataContext.Provider value={onFetchDetailData}>
        <PopUpToggleContext.Provider value={popUpToggle}>
          <SetPopUpToggleContext.Provider value={setPopUpToggle}>
            {children}
          </SetPopUpToggleContext.Provider>
        </PopUpToggleContext.Provider>
      </OnFetchDetailDataContext.Provider>
    </DetailDataContext.Provider>
  );
}

export function useDetailContext() {
  return useContext(DetailDataContext);
}

export function useOnFetchDetailDataContext() {
  return useContext(OnFetchDetailDataContext);
}

export function usePopUpToggleContext() {
  return useContext(PopUpToggleContext);
}

export function useSetPopUpToggleContext() {
  return useContext(SetPopUpToggleContext);
}
