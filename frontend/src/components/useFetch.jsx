import { useState, useEffect } from 'react'
import axios from 'axios'

function useFetch (url) {
  const [data, setData] = useState([])
  const [loading, setLoading] = useState(true)
  async function fetchUrl () {
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
  }, [url])

  return [data, loading]
}
export default useFetch
