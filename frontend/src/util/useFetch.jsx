import { useEffect } from "react";

const useFetch = (callback, type) => {
  const getUrl = () => {
    let url = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/";
    switch (type) {
      case "mainDish":
        url += "main";
      case "bestDish":
        url += "best";
      case "soupDish":
        url += "soup";
      case "sideDish":
        url += "side";
      case "detailDish":
        url += "detail";

      default:
        return url;
    }
  };

  const fetchInitialData = async () => {
    const response = await fetch(getUrl());
    const initialData = await response.json();
    const dataBody = initialData.body;
    callback(dataBody);
  };

  useEffect(() => {
    fetchInitialData();
  }, []);
};

export default useFetch;
