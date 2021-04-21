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
  EVENT: "이벤트특가",
  LAUNCH: "런칭특가",
};

const URLS = {
  base: "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/",
};

export { BUTTON_TYPE, LABEL_TYPE, URLS };
