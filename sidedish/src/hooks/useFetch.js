import React, { useState, useEffect } from 'react';

const useFetch = (url, ...targets) => {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(false);

  const fetchData = async (url) => {
    try {
      setLoading(true);
      const res = await fetch(url);
      const data = await res.json();
      setLoading(false);
      setData(data);
    } catch (err) {
      console.log(err);
    }
  };

  useEffect(() => {
    fetchData(url);
  }, [...targets]);

  return { data, loading };
};

export default useFetch;
