const formatPriceAsNumber = (priceString, count = 1) => {
  const price = Number(String(priceString).match(/\d/g).join(''));
  return (price * count).toLocaleString();
}

export { formatPriceAsNumber };