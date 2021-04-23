import React, { useState, useEffect } from 'react';

const useFetch = ({ url, parse, target = [] }) => {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  const fetchData = async (url) => {
    try {
      setLoading(true);
      const res = await fetch(url);
      const data = await res.json();
      setLoading(false);
      if (parse) setData(parse(data));
      else setData(data);
    } catch (err) {
      setError(err);
    }
  };

  useEffect(() => {
    fetchData(url);
  }, [...target]);

  return { data, loading, error };
};

export default useFetch;
