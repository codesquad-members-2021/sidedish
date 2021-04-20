const fetchData = async (url, cb) => {
  try {
    const res = await fetch(url);
    const data = await res.json();
    cb(data);
  } catch (err) {
    console.log(err);
  }
};

export default fetchData;
