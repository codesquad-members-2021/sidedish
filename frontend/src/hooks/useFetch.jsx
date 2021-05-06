import { useState, useEffect } from "react";

const useFetch = (
  url,
  {
    callback = null,
    options = {},
    addProps = [],
    addFunc = null,
    isExecuteFunc = false,
  } = {
    callback: null,
    options: {},
    addProps: [],
    addFunc: null,
    isExecuteFunc: false,
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

      let result = null;
      if (options && options.method === 'POST')
        result = { status: res.status, ok: res.ok }
      else
        result = await res.json();

      setResponse(result);
      if (callback) callback(result);
    } catch (e) {
      setError(e);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    if (!addProps) return;
    if (addProps.length > 0) {
      const flag = addProps.some((v) => !v);
      if (flag) {
        isExecuteFunc && addFunc && addFunc();
        return;
      };
    }

    fetchData();
    isExecuteFunc && addFunc && addFunc();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [...addProps]);

  return { response, loading, error };
};

export default useFetch;
