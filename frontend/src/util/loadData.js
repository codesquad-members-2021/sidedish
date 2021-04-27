const loadData = async (setState, type) => {
  const getUrl = type => {
    let url =
      'https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/';
    switch (type) {
      case 'mainDish':
        return (url += 'main');
      case 'bestDish':
        return (url += 'best');
      case 'soupDish':
        return (url += 'soup');
      case 'sideDish':
        return (url += 'side');
      case 'detailDish':
        return (url += 'detail');
      default:
        return;
    }
  };

  const response = await fetch(getUrl(type));
  const initialData = await response.json();
  const dataBody = initialData.body;
  if (type !== 'bestDish') {
    return setState([...dataBody, ...dataBody]);
  }
  setState(dataBody);
};

export default loadData;
