import { useEffect } from "react";

const useFetch = (callback, type) => {
  const getUrl = () => {
    let url =
      "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/";

    switch (type) {

      case 'mainDish':
        return (url += 'main');
      case 'bestDish':
        return (url += 'best');
      case 'soupDish':
        return (url += 'soup');
      case 'sideDish':
        return (url += 'side');
      case 'detailDish':
        return (url += 'detail');

    }
  };

  const fetchInitialData = async () => {
    const response = await fetch(getUrl());
    const initialData = await response.json();
    const dataBody = initialData.body;
    if (type !== "bestDish") {
      return callback([...dataBody, ...dataBody]);
    }
    callback(dataBody);
  };

  useEffect(() => {
    fetchInitialData();
  }, []);
};

export default useFetch;
