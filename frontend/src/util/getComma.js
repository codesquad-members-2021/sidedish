const getComma = (number) => {
  if (!number) {
    return null;
  }
  return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
};

export default getComma;
