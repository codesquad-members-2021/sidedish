import { createContext, useContext, useEffect, useState } from "react";
import API from "../common/api.js";

const DetailDataContext = createContext();
const PopUpToggleContext = createContext();
const OnFetchDetailDataContext = createContext();
const SetPopUpToggleContext = createContext();
const MainItemsContext = createContext();
const MainItemsActiveContext = createContext();
const SetMainItemsActiveContext = createContext();

export function ContextProvider({ children }) {
  const [detailData, setDetailData] = useState(null);
  const [popUpToggle, setPopUpToggle] = useState(false);
  const [mainItems, setMainItems] = useState(null);
  const [mainItemsActive, setMainItemsActive] = useState(false);

  useEffect(() => {
    if (!mainItems) {
      (async () => {
        const data = await API("/main");
        setMainItems(data);
      })();
    }
    return;
  }, [mainItems]);

  const onFetchDetailData = async (id) => {
    setPopUpToggle(true);
    setDetailData(null);
    const data = await API(`/detail/${id}`);
    if (data) {
      setTimeout(() => setDetailData(data), 1000);
    }
  };

  return (
    <DetailDataContext.Provider value={detailData}>
      <OnFetchDetailDataContext.Provider value={onFetchDetailData}>
        <PopUpToggleContext.Provider value={popUpToggle}>
          <SetPopUpToggleContext.Provider value={setPopUpToggle}>
            <MainItemsContext.Provider value={mainItems}>
              <MainItemsActiveContext.Provider value={mainItemsActive}>
                <SetMainItemsActiveContext.Provider value={setMainItemsActive}>
                  {children}
                </SetMainItemsActiveContext.Provider>
              </MainItemsActiveContext.Provider>
            </MainItemsContext.Provider>
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

export function useMainItemsContext() {
  return useContext(MainItemsContext);
}

export function useMainItemsActiveContext() {
  return useContext(MainItemsActiveContext);
}

export function useSetMainItemsActiveContext() {
  return useContext(SetMainItemsActiveContext);
}
