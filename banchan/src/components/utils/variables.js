import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faSearch,
  faTimes,
  faAngleLeft,
  faAngleRight,
  faAngleUp,
  faAngleDown,
} from "@fortawesome/free-solid-svg-icons";

const BUTTON_TYPE = {
  SEARCH: <FontAwesomeIcon icon={faSearch} />,
  LEFT: <FontAwesomeIcon icon={faAngleLeft} />,
  RIGHT: <FontAwesomeIcon icon={faAngleRight} />,
  UP: <FontAwesomeIcon icon={faAngleUp} />,
  DOWN: <FontAwesomeIcon icon={faAngleDown} />,
  CLOSE: <FontAwesomeIcon icon={faTimes} />,
  ORDER: "주문하기",
  SOLDOUT: "일시품절",
};

const LABEL_TYPE = {
  이벤트특가: "EVENT",
  론칭특가: "LAUNCH",
  베스트: "BEST",
};

export { BUTTON_TYPE, LABEL_TYPE };
