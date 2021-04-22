import { useEffect } from "react";

const useFetch = (callback, type) => {
  const getUrl = () => {
    let url =
      "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/";

    switch (type) {
      case "mainDish":
        url += "main";
        return url;
      case "bestDish":
        url += "best";
        return url;
      case "soupDish":
        url += "soup";
        return url;
      case "sideDish":
        url += "side";
        return url;
      case "detailDish":
        url += "detail";
        return url;

      default:
        return url;
    }
  };

  const fetchInitialData = async () => {
    const response = await fetch(getUrl());
    // .then((response) => response.json())
    // .then((data) => data.body);
    const initialData = await response.json();
    const dataBody = initialData.body;
    callback(dataBody);
  };

  useEffect(() => {
    fetchInitialData();
  }, []);
};

export default useFetch;
