// 받아온 문자열을 숫자만 냅두고 다 제거 후 숫자로 형변환
export const changeAllToNumbers = (aStr) => parseInt(aStr.replace(/[^0-9]/g, ''));
export const threeDigitsComma = (aNum) => ("" + aNum).replace(/\B(?=(\d{3})+(?!\d))/g, ",")