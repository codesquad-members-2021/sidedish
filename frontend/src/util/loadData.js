const loadData = async (setState, url) => {
  await fetch(url)
    .then((response) => response.json())
    .then((data) => setState(data.body));
  //   const { data } = await fetch(url).then((response) => response.json());
  //   setState(data);
};

export default loadData;
