import { useEffect, useState } from "react";

const useFetch = ({ url, target = [] }) => {
  const [products, setProducts] = useState(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  const fetchData = async (url) => {
    try {
      setLoading(true); // 로딩중..
      const response = await fetch(url);
      const jsonData = await response.json();
      setProducts(jsonData);
      setLoading(false); // 로딩중 끝
    } catch (err) {
      setError(err);
    }
  };

  useEffect(() => {
    fetchData(url);
  }, [...target]);

  return { products, loading, error };
};

export default useFetch;
