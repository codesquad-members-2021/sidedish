import { useState, useEffect } from "react";

const useFetch = (
  url,
  { callback = null, options = {} } = {
    callback: null,
    options: {},
  }
) => {
  const [response, setResponse] = useState();
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");

  const fetchData = async () => {
    try {
      const res = await fetch(url, options);
      if (!res.ok) {
        setError(`Error: code ${res.status}`);
        return;
      }
      const json = await res.json();
      setResponse(json);
      if (callback) callback(json);
    } catch (e) {
      setError(e.message);
    } finally {
      setLoading(false);
    }
  };

  // eslint-disable-next-line react-hooks/exhaustive-deps
  useEffect(() => fetchData(), []);

  return { response, loading, error };
};

export default useFetch;
