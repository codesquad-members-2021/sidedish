const useFetch = (url, options) => {
  const [response, setResponse] = React.useState(null);
  const [error, setError] = React.useState(null);
  const [isLoading, setIsLoading] = React.useState(false);

  React.useEffect(() => {
    setIsLoading(true);

    try {
      const res = await fetch(url, options);
      const json = await res.json();
      setResponse(json);
      setIsLoading(false)
    } catch (error) {
      setError(error);
    }
  }, []);

  return { response, error, isLoading };
};

export default useFetch;