import { useState, useEffect } from 'react';

const useFetch = (url, callback, options = {}) => {
    const [response, setResponse] = useState();
    const [loading, setLoading] = useState(false);
    const fetchData = async() => {
        setLoading(true);
        const res = await fetch(url, options);
        const json = await res.json();
        setResponse(json);
        if(callback) callback(json)
        setLoading(false);
    }
    useEffect(() => { 
        fetchData(); 
    }, []);
    return {response, loading};
};

export default useFetch