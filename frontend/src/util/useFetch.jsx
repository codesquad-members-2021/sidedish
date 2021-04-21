import { useEffect } from 'react';

const useFetch = (callback, type) => {
  const getUrl = () => {
    let url;
    switch (type) {
      case 'mainDish':
        url =
          'https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main';
        return url;
      default:
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
