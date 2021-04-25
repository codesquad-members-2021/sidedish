import { useState, useEffect } from 'react'
import axios from 'axios'

function useFetch (url) {
  const [data, setData] = useState([])
  const [loading, setLoading] = useState(true)
  async function fetchUrl () {
    if(!url) return;
    await axios.get(url).then(response => {
      return setData(response.data)
    })
    // const res = await fetch(url)
    // const json = await res.json()
    // setData(json)
    setLoading(false)
  }
  useEffect(() => {
    fetchUrl()
    return () => {
      setData([]);
      setLoading(true);
    } // eslint-disable-next-line
  }, [url]) 

  return [data, loading]
}
export default useFetch
