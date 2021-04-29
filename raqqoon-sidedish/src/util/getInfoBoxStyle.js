import { SIZE_MEDIUM, SIZE_SMALL } from 'const';

const getInfoBoxStyle = (size) => {
  switch (size) {
    case SIZE_SMALL:
      return `160px`;
    case SIZE_MEDIUM:
      return `308px`;
    default:
      break;
  }
};

export default getInfoBoxStyle;
