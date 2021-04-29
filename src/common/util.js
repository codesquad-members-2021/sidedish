export const addCommaToNumber = (number) => number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
