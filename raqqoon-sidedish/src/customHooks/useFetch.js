import { useEffect, useState } from 'react';

const useFetch = (url, initial) => {
  const [response, setResponse] = useState(initial);

  const fetchData = async () => {
    const res = await fetch(url);
    const data = await res.json();
    const dataBody = await data.body;
    setResponse(dataBody);
  };

  useEffect(() => {
    fetchData();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return response;
};

export default useFetch;
