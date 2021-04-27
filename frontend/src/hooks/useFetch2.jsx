import { useState, useEffect } from "react";

const useFetch = (url, options = {}) => {
  const [response, setResponse] = useState();
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");

  const executeFetch = async () => {
    try {
      const res = await fetch(url, options);
      if (!res.ok) {
        setError(`Error: code ${res.status}`);
        return;
      }

      const json = await res.json();
      setResponse(json);
    } catch (e) {
      setError(e.message);
    } finally {
      setLoading(false);
    }
  };

  // eslint-disable-next-line react-hooks/exhaustive-deps
  useEffect(() => executeFetch(), []);
  return { response, loading, error };
};

export default useFetch;
