import { useEffect, useState } from 'react';

const useFetch = (url) => {
  const [response, setResponse] = useState(null);
  const fetchData = async () => {
    const res = await fetch(url);
    const data = await res.json();
    setResponse(data);
  };

  useEffect(() => {
    fetchData();
  }, []);

  return response;
};

export default useFetch;
