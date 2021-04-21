import { useState, useEffect } from 'react'

const useFetch = (url, options = {}) => {
    const [response, setResponse] = useState();
    useEffect(async () => {
        const res = await fetch(url, options);
        const json = await res.json();
        setResponse(json);
    }, []);
    return response;
};

export default useFetch