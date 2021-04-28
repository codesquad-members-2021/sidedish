import { SIZE_LARGE, SIZE_MEDIUM, SIZE_SMALL } from 'const';

const checkCardSize = (size) => {
  switch (size) {
    case SIZE_SMALL:
      return `160px`;
    case SIZE_MEDIUM:
      return `308px`;
    case SIZE_LARGE:
      return `384px`;
    default:
      break;
  }
};

export default checkCardSize;
