const getComma = (number) => {
  const a = number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  return a;
};

export default getComma;
