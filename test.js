var isHappy = function (n) {
  const record = {};
  let currentNum = getNext(n);
  do {
    if (currentNum === 1) {
      return true;
    } else {
      record[currentNum] = 1;
      currentNum = getNext(currentNum);
    }
  } while (!(currentNum in record));

  return false;
};

function getNext(n) {
  const array = String(n).split("");
  return array.reduce((acc, curr) => {
    return acc + Number(curr) ** 2;
  }, 0);
}

console.log(isHappy(19));
