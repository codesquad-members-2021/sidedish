const loadData = async (setState, type, hash) => {
  const getUrl = (type) => {
    let url =
      "http://ec2-52-79-64-179.ap-northeast-2.compute.amazonaws.com:8080/";
    switch (type) {
      case "mainDish":
        return (url += "section/main");
      case "bestDish":
        return (url += "best");
      case "soupDish":
        return (url += "section/soup");
      case "sideDish":
        return (url += "section/side");
      case "detailDish":
        return (url += `detail/${hash}`);
      case "details":
        return (url += "section/side");
      default:
        return;
    }
  };

  const response = await fetch(getUrl(type));
  const initialData = await response.json();

  if (type === "detailDish") {
    const dataBody = initialData.data;
    return setState(dataBody);
  }
  if (type !== "bestDish") {
    const dataBody = initialData.dishes;

    if (type === "details") {
      const dataBody = initialData.dishes;
      return setState(dataBody);
    }

    return setState([...dataBody, ...dataBody]);
  }
  const dataBody = initialData.best_dishes;
  setState(dataBody);
};

export default loadData;
