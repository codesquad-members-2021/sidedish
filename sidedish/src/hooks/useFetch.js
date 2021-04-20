import React, { useState, useEffect } from 'react';

const useFetch = (url) => {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(false);

  const fetchData = async (url, cb) => {
    try {
      setLoading(true);
      const res = await fetch(url);
      const data = await res.json();
      setLoading(false);
      cb(data);
    } catch (err) {
      console.log(err);
    }
  };

  useEffect(() => {
    fetchData(url, setData);
  }, []);

  return { data, loading };
};

export default useFetch;
